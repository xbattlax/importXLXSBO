<?php

namespace App\Controller;

use App\Entity\Band;
use App\Repository\BandRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\ORM\EntityManagerInterface;
use phpDocumentor\Reflection\Types\Collection;
use PhpOffice\PhpSpreadsheet\IOFactory;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Validator\Constraints\Json;

class PostBandsXlxsController extends AbstractController
{
    public function __construct(private readonly BandRepository $bandRepository)
    {
    }

    public function __invoke(Request $request)
    {
        $user = $this->getUser();
        /** @var UploadedFile $file */
        $file = $request->files->get('file');

        if (!$file || $file->getMimeType() !== 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet') {
            throw $this->createNotFoundException('The file is not a valid xlsx file');
        }

        $spreadsheet = IOFactory::load($file->getPathname());
        $worksheet = $spreadsheet->getActiveSheet();

        $highestRow = $worksheet->getHighestRow();

        $bands = new ArrayCollection();

        for ($row = 2; $row <= $highestRow; $row++) {
            $band = new Band();

            $band->setName($worksheet->getCellByColumnAndRow(1, $row)->getValue())
                ->setOrigin($worksheet->getCellByColumnAndRow(2, $row)->getValue())
                ->setCity($worksheet->getCellByColumnAndRow(3, $row)->getValue())
                ->setStartYear($worksheet->getCellByColumnAndRow(4, $row)->getValue())
                ->setEndYear($worksheet->getCellByColumnAndRow(5, $row)->getValue())
                ->setFounder($worksheet->getCellByColumnAndRow(6, $row)->getValue())
                ->setMembers($worksheet->getCellByColumnAndRow(7, $row)->getValue())
                ->setMusicalTrend($worksheet->getCellByColumnAndRow(8, $row)->getValue())
                ->setPresentation($worksheet->getCellByColumnAndRow(9, $row)->getValue())
            ;

            $this->bandRepository->save($band);
        }
        return new JsonResponse($bands, Response::HTTP_CREATED);
    }
}

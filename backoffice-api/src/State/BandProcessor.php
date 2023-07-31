<?php

namespace App\State;

use ApiPlatform\Metadata\Delete;
use ApiPlatform\Metadata\Operation;
use ApiPlatform\Metadata\Post;
use ApiPlatform\Metadata\Put;
use ApiPlatform\State\ProcessorInterface;
use App\Entity\Band;
use App\Repository\BandRepository;
use Doctrine\Common\Collections\ArrayCollection;

class BandProcessor implements ProcessorInterface
{
    public function __construct(private readonly BandRepository $bandRepository)
    {
    }
    public function process(mixed $data, Operation $operation, array $uriVariables = [], array $context = []): mixed
    {
        if ($data instanceof ArrayCollection && $operation instanceof Post) {
            $bands = new ArrayCollection();
            foreach ($data as $band) {
                $this->bandRepository->save($band);
                $bands->add($band);
            }
            return $bands;
        }
        elseif ($data instanceof Band && $operation instanceof Put) {
            $this->bandRepository->save($data);
            return $data;
        }
        elseif ($data instanceof Band && $operation instanceof Delete) {
            $this->bandRepository->remove($data);
            return $data;
        }
        else {
            throw new \Exception('Not implemented');
        }
    }
}

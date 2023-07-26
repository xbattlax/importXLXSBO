<?php

namespace App\Entity;

use ApiPlatform\Metadata\ApiProperty;
use ApiPlatform\Metadata\ApiResource;
use ApiPlatform\Metadata\Delete;
use ApiPlatform\Metadata\GetCollection;
use ApiPlatform\Metadata\Post;
use ApiPlatform\Metadata\Put;
use App\Controller\PostBandsXlxsController;
use App\Repository\BandRepository;
use App\State\BandProcessor;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[\Attribute]
#[ORM\Entity(repositoryClass: BandRepository::class)]
#[ApiResource(
    operations: [
        new Post(
            uriTemplate: '/band',
        ),
        new Put(
            uriTemplate: '/band/{id}',
            requirements: ['id' => '\d+'],
        ),
        new Delete(
            uriTemplate: '/band/{id}',
            requirements: ['id' => '\d+'],
        ),
        new Post(
            uriTemplate: '/band/from_xlsx',
            controller: PostBandsXlxsController::class,
            read: false,
            deserialize: false,
        ),
        new GetCollection(
            uriTemplate: '/band',
            paginationEnabled: false,
            //security: 'is_granted("ROLE_ADMIN")',
        ),
    ],
    normalizationContext: ['groups' => ['band:read']],
    denormalizationContext: ['groups' => ['band:write']],
)
]
class Band
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    #[ApiProperty(identifier: true)]
    private int $id;

    #[Band("band:read", "band:write")]
    #[ORM\Column(length: 255)]
    private ?string $Name = null;

    #[Band("band:read", "band:write")]
    #[ORM\Column(length: 255, nullable: true)]
    private ?string $Origin = null;

    #[Band("band:read", "band:write")]
    #[ORM\Column(length: 255, nullable: true)]
    private ?string $City = null;

    #[Band("band:read", "band:write")]
    #[ORM\Column(nullable: true)]
    private ?int $StartYear = null;

    #[Band("band:read", "band:write")]
    #[ORM\Column(nullable: true)]
    private ?int $EndYear = null;

    #[Band("band:read", "band:write")]
    #[ORM\Column(length: 255, nullable: true)]
    private ?string $Founder = null;

    #[Band("band:read", "band:write")]
    #[ORM\Column(nullable: true)]
    private ?int $Members = null;

    #[Band("band:read", "band:write")]
    #[ORM\Column(length: 255, nullable: true)]
    private ?string $MusicalTrend = null;

    #[Band("band:read", "band:write")]
    #[ORM\Column(type: Types::TEXT, nullable: true)]
    private ?string $Presentation = null;

    #[ORM\ManyToOne(inversedBy: 'bands')]
    private ?User $belongTo = null;

    public function getId(): int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->Name;
    }

    public function setName(string $Name): static
    {
        $this->Name = $Name;

        return $this;
    }

    public function getOrigin(): ?string
    {
        return $this->Origin;
    }

    public function setOrigin(?string $Origin): static
    {
        $this->Origin = $Origin;

        return $this;
    }

    public function getCity(): ?string
    {
        return $this->City;
    }

    public function setCity(?string $City): static
    {
        $this->City = $City;

        return $this;
    }

    public function getStartYear(): ?int
    {
        return $this->StartYear;
    }

    public function setStartYear(?int $StartYear): static
    {
        $this->StartYear = $StartYear;

        return $this;
    }

    public function getEndYear(): ?int
    {
        return $this->EndYear;
    }

    public function setEndYear(?int $EndYear): static
    {
        $this->EndYear = $EndYear;

        return $this;
    }

    public function getFounder(): ?string
    {
        return $this->Founder;
    }

    public function setFounder(?string $Founder): static
    {
        $this->Founder = $Founder;

        return $this;
    }

    public function getMembers(): ?int
    {
        return $this->Members;
    }

    public function setMembers(?int $Members): static
    {
        $this->Members = $Members;

        return $this;
    }

    public function getMusicalTrend(): ?string
    {
        return $this->MusicalTrend;
    }

    public function setMusicalTrend(?string $MusicalTrend): static
    {
        $this->MusicalTrend = $MusicalTrend;

        return $this;
    }

    public function getPresentation(): ?string
    {
        return $this->Presentation;
    }

    public function setPresentation(?string $Presentation): static
    {
        $this->Presentation = $Presentation;

        return $this;
    }

    public function getBelongTo(): ?User
    {
        return $this->belongTo;
    }

    public function setBelongTo(?User $belongTo): static
    {
        $this->belongTo = $belongTo;

        return $this;
    }
}

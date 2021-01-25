<?php

namespace App\Entity;

use App\Repository\LinksRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=LinksRepository::class)
 */
class Links
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Name;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Path;

    /**
     * @ORM\OneToOne(targetEntity=HeadShop::class, inversedBy="link", cascade={"persist", "remove"})
     */
    private $headshop;

    /**
     * @ORM\OneToOne(targetEntity=FootShop::class, inversedBy="link", cascade={"persist", "remove"})
     */
    private $footshop;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->Name;
    }

    public function setName(string $Name): self
    {
        $this->Name = $Name;

        return $this;
    }

    public function getPath(): ?string
    {
        return $this->Path;
    }

    public function setPath(string $Path): self
    {
        $this->Path = $Path;

        return $this;
    }

    public function getHeadshop(): ?HeadShop
    {
        return $this->headshop;
    }

    public function setHeadshop(?HeadShop $headshop): self
    {
        $this->headshop = $headshop;

        return $this;
    }

    public function getFootshop(): ?FootShop
    {
        return $this->footshop;
    }

    public function setFootshop(?FootShop $footshop): self
    {
        $this->footshop = $footshop;

        return $this;
    }

    public function __toString()
    {
        return $this->getName();
    }
}

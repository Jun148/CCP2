<?php

namespace App\Entity;

use App\Repository\BrandLogoRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=BrandLogoRepository::class)
 */
class BrandLogo
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
     * @ORM\OneToOne(targetEntity=Images::class, mappedBy="brandlogo", cascade={"persist", "remove"})
     */
    private $image;

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

    public function getImage(): ?Images
    {
        return $this->image;
    }

    public function setImage(?Images $image): self
    {
        // unset the owning side of the relation if necessary
        if ($image === null && $this->image !== null) {
            $this->image->setBrandlogo(null);
        }

        // set the owning side of the relation if necessary
        if ($image !== null && $image->getBrandlogo() !== $this) {
            $image->setBrandlogo($this);
        }

        $this->image = $image;

        return $this;
    }
}

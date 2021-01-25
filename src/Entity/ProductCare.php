<?php

namespace App\Entity;

use App\Repository\ProductCareRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=ProductCareRepository::class)
 */
class ProductCare
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
    private $Title;

    /**
     * @ORM\Column(type="text")
     */
    private $Subtitle;

    /**
     * @ORM\Column(type="text")
     */
    private $Text;

    /**
     * @ORM\OneToOne(targetEntity=Images::class, mappedBy="Productcare", cascade={"persist", "remove"})
     */
    private $image;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitle(): ?string
    {
        return $this->Title;
    }

    public function setTitle(string $Title): self
    {
        $this->Title = $Title;

        return $this;
    }

    public function getSubtitle(): ?string
    {
        return $this->Subtitle;
    }

    public function setSubtitle(string $Subtitle): self
    {
        $this->Subtitle = $Subtitle;

        return $this;
    }

    public function getText(): ?string
    {
        return $this->Text;
    }

    public function setText(string $Text): self
    {
        $this->Text = $Text;

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
            $this->image->setProductcare(null);
        }

        // set the owning side of the relation if necessary
        if ($image !== null && $image->getProductcare() !== $this) {
            $image->setProductcare($this);
        }

        $this->image = $image;

        return $this;
    }
}

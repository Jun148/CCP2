<?php

namespace App\Entity;

use App\Repository\FootShopRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=FootShopRepository::class)
 */
class FootShop
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
     * @ORM\OneToOne(targetEntity=Images::class, mappedBy="footshop", cascade={"persist", "remove"})
     */
    private $image;

    /**
     * @ORM\OneToOne(targetEntity=Links::class, mappedBy="footshop", cascade={"persist", "remove"})
     */
    private $link;

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

    public function getImage(): ?Images
    {
        return $this->image;
    }

    public function setImage(?Images $image): self
    {
        // unset the owning side of the relation if necessary
        if ($image === null && $this->image !== null) {
            $this->image->setFootshop(null);
        }

        // set the owning side of the relation if necessary
        if ($image !== null && $image->getFootshop() !== $this) {
            $image->setFootshop($this);
        }

        $this->image = $image;

        return $this;
    }

    public function getLink(): ?Links
    {
        return $this->link;
    }

    public function setLink(?Links $link): self
    {
        // unset the owning side of the relation if necessary
        if ($link === null && $this->link !== null) {
            $this->link->setFootshop(null);
        }

        // set the owning side of the relation if necessary
        if ($link !== null && $link->getFootshop() !== $this) {
            $link->setFootshop($this);
        }

        $this->link = $link;

        return $this;
    }
}

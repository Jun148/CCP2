<?php

namespace App\Entity;

use DateTime;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use App\Repository\ImagesRepository;
use Symfony\Component\HttpFoundation\File\File;
use Symfony\Component\Validator\Constraints as Assert;
use Vich\UploaderBundle\Mapping\Annotation as Vich;
use Symfony\Component\HttpFoundation\File\UploadedFile;

/**
 * @ORM\Entity(repositoryClass=ImagesRepository::class)
 * @Vich\Uploadable()
 */
class Images
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @var string|null
     * @ORM\Column(type="string", length=255)
     */
    private $image;

    /**
     * @var File|null
     * @Assert\Image(mimeTypes={"image/jpeg", "image/jpg", "image/png", "image/webp"})
     * @Vich\UploadableField(mapping="upload", fileNameProperty="image")
     *
     */
    private $imageFile;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getImage(): ?string
    {
        return $this->image;
    }


    public function setImage(?string $image)
    {
        $this->image = $image;
        return $this;
    }


    /**
     * @ORM\Column(type="datetime")
     * @var null|DateTime
     */
    private $updated_at;

    /**
     * @ORM\ManyToMany(targetEntity=Article::class, mappedBy="images")
     */
    private $articles;

    /**
     * @ORM\OneToOne(targetEntity=BrandLogo::class, inversedBy="image", cascade={"persist", "remove"})
     */
    private $brandlogo;

    /**
     * @ORM\OneToOne(targetEntity=ProductCare::class, inversedBy="image", cascade={"persist", "remove"})
     */
    private $Productcare;

    /**
     * @ORM\OneToOne(targetEntity=HeadShop::class, inversedBy="image", cascade={"persist", "remove"})
     */
    private $headshop;

    /**
     * @ORM\OneToOne(targetEntity=FootShop::class, inversedBy="image", cascade={"persist", "remove"})
     */
    private $footshop;

    public function __construct()
    {
        $this->articles = new ArrayCollection();
    }


    public function getImageFile()
    {
        return $this->imageFile;
    }



    public function setImageFile( ?File $imageFile ): void {
        $this->imageFile = $imageFile;
        if($this->imageFile instanceof UploadedFile){
            $this->updated_at = new \DateTime('now');
        }
        //return $this;
    }

    /**
     * @return Collection|Article[]
     */
    public function getArticles(): Collection
    {
        return $this->articles;
    }

    public function addArticle(Article $article): self
    {
        if (!$this->articles->contains($article)) {
            $this->articles[] = $article;
            $article->addImage($this);
        }

        return $this;
    }

    public function removeArticle(Article $article): self
    {
        if ($this->articles->removeElement($article)) {
            $article->removeImage($this);
        }

        return $this;
    }

    public function getBrandlogo(): ?BrandLogo
    {
        return $this->brandlogo;
    }

    public function setBrandlogo(?BrandLogo $brandlogo): self
    {
        $this->brandlogo = $brandlogo;

        return $this;
    }

    public function getProductcare(): ?ProductCare
    {
        return $this->Productcare;
    }

    public function setProductcare(?ProductCare $Productcare): self
    {
        $this->Productcare = $Productcare;

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
}

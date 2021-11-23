<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use App\Repository\ArticleRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;


/**
 * @ApiResource()
 * @ORM\Entity(repositoryClass=ArticleRepository::class)
 */
class Article
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="bigint")
     * @Assert\NotBlank
     * @Assert\Length(
     *      min = 13,
     *      max = 13,
     *      minMessage = "l'ean doit comporte {{ limit }} chiffres de longueur",
     *      maxMessage = "l'ean doit comporte {{ limit }} chiffres de longueur"
     * )
     */
    private $ean;

    /**
     * @ORM\Column(type="string", length=50)
     * @Assert\NotBlank
     * 
     */
    private $name;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $teaser;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $description;

    /**
     * @ORM\Column(type="integer")
     */
    private $price;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $stock;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $picturemain;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $picturefront;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $pictureback;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $manuel;

    /**
     * @ORM\ManyToOne(targetEntity=Category::class, inversedBy="article")
     * @ORM\JoinColumn(nullable=false)
     */
    private $category;

    /**
     * @ORM\ManyToMany(targetEntity=Tag::class, inversedBy="article")
     */
    private $tag;

    public function __construct()
    {
        $this->tag = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getEan(): ?int
    {
        return $this->ean;
    }

    public function setEan(int $ean): self
    {
        $this->ean = $ean;

        return $this;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getTeaser(): ?string
    {
        return $this->teaser;
    }

    public function setTeaser(?string $teaser): self
    {
        $this->teaser = $teaser;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(?string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getPrice(): ?int
    {
        return $this->price;
    }

    public function setPrice(int $price): self
    {
        $this->price = $price;

        return $this;
    }

    public function getStock(): ?int
    {
        return $this->stock;
    }

    public function setStock(?int $stock): self
    {
        $this->stock = $stock;

        return $this;
    }

    public function getPicturemain(): ?string
    {
        return $this->picturemain;
    }

    public function setPicturemain(?string $picturemain): self
    {
        $this->picturemain = $picturemain;

        return $this;
    }

    public function getPicturefront(): ?string
    {
        return $this->picturefront;
    }

    public function setPicturefront(?string $picturefront): self
    {
        $this->picturefront = $picturefront;

        return $this;
    }

    public function getPictureback(): ?string
    {
        return $this->pictureback;
    }

    public function setPictureback(?string $pictureback): self
    {
        $this->pictureback = $pictureback;

        return $this;
    }

    public function getManuel(): ?string
    {
        return $this->manuel;
    }

    public function setManuel(?string $manuel): self
    {
        $this->manuel = $manuel;

        return $this;
    }

    public function getCategory(): ?Category
    {
        return $this->category;
    }

    public function setCategory(?Category $category): self
    {
        $this->category = $category;

        return $this;
    }

    /**
     * @return Collection|Tag[]
     */
    public function getTag(): Collection
    {
        return $this->tag;
    }

    public function addTag(Tag $tag): self
    {
        if (!$this->tag->contains($tag)) {
            $this->tag[] = $tag;
        }

        return $this;
    }

    public function removeTag(Tag $tag): self
    {
        $this->tag->removeElement($tag);

        return $this;
    }
}

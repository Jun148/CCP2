<?php

namespace App\Controller;

use App\Repository\GenderRepository;
use App\Repository\ArticleRepository;
use App\Repository\CategoryRepository;
use App\Repository\HeadShopRepository;
use App\Repository\SiteNameRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class CategoryFrontController extends AbstractController
{
    /**
     * @Route("/category/{name}", name="category_front")
     */
    public function index(CategoryRepository $categoryRepository, GenderRepository $genderRepository, ArticleRepository $articleRepository, SiteNameRepository $siteNameRepository, HeadShopRepository $headShopRepository, $name): Response
    {
        return $this->render('category_front/index.html.twig', [
            'categories' => $categoryRepository->findAll(),
            'genders' => $genderRepository->findAll(),
            'sitename' => $siteNameRepository->findOneBy([], [
                'id' => 'DESC'
            ]),
            'headshop' => $headShopRepository->findOneBy([], [
                'id' => 'DESC'
            ]),
            'articles' => $articleRepository->findBy([
                'category' => $categoryRepository->findBy([
                    'Name' => $name
                ])
            ])
        ]);
    }
}
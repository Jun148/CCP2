<?php

namespace App\Controller;

use App\Repository\GenderRepository;
use App\Repository\ArticleRepository;
use App\Repository\CategoryRepository;
use App\Repository\FootShopRepository;
use App\Repository\HeadShopRepository;
use App\Repository\SiteNameRepository;
use App\Repository\BrandLogoRepository;
use App\Repository\LearnMoreRepository;
use App\Repository\ProductCareRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class MainController extends AbstractController
{
    /**
     * @Route("/", name="main")
     */
    public function index(GenderRepository $genderRepository, CategoryRepository $categoryRepository, ArticleRepository $articleRepository, BrandLogoRepository $brandLogoRepository, SiteNameRepository $siteNameRepository, ProductCareRepository $productCareRepository, LearnMoreRepository $learnMoreRepository, HeadShopRepository $headShopRepository, FootShopRepository $footShopRepository): Response
    {
        return $this->render('main/index.html.twig', [
            'controller_name' => 'MainController',
            'genders' => $genderRepository->findAll(),
            'categories' => $categoryRepository->findAll(),
            'brandlogos' => $brandLogoRepository->findAll(),
            'learnmore' => $learnMoreRepository->findOneBy([],[
                'id' => 'DESC'
            ]),
            'productcare' => $productCareRepository->findOneBy([],[
                'id' => 'DESC'
            ]),
            'sitename' => $siteNameRepository->findOneBy([], [
                'id' => 'DESC'
            ]),
            'headshop' => $headShopRepository->findOneBy([], [
                'id' => 'DESC'
            ]),
            'footshop' => $footShopRepository->findOneBy([], [
                'id' => 'DESC'
            ]),
            'articles' => $articleRepository->findBy(array(),array('id'=>'DESC'),3,0)
        ]);
    }
}

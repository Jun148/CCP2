<?php

namespace App\Controller;

use App\Repository\GenderRepository;
use App\Repository\ArticleRepository;
use App\Repository\CategoryRepository;
use App\Repository\HeadShopRepository;
use App\Repository\SiteNameRepository;
use App\Repository\BrandLogoRepository;
use App\Repository\LearnMoreRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class GenderFrontController extends AbstractController
{
    /**
     * @Route("/gender/{name}", name="gender_front")
     */
    public function index(GenderRepository $genderRepository, CategoryRepository $categoryRepository, ArticleRepository $articleRepository, BrandLogoRepository $brandLogoRepository, SiteNameRepository $siteNameRepository, LearnMoreRepository $learnMoreRepository, HeadShopRepository $headShopRepository, $name): Response
    {
        return $this->render('gender_front/index.html.twig', [
            'genders' => $genderRepository->findAll(),
            'categories' => $categoryRepository->findAll(),
            'brandlogos' => $brandLogoRepository->findAll(),
            'learnmore' => $learnMoreRepository->findOneBy([],[
                'id' => 'DESC'
            ]),
            'sitename' => $siteNameRepository->findOneBy([], [
                'id' => 'DESC'
            ]),
            'headshop' => $headShopRepository->findOneBy([], [
                'id' => 'DESC'
            ]),
            'articles' => $articleRepository->findBy(array('gender' => $genderRepository->findBy(array('Name' => $name))),array('id'=>'DESC'),3,0)
        ]);
    }
}

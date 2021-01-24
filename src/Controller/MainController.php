<?php

namespace App\Controller;

use App\Repository\ArticleRepository;
use App\Repository\BrandLogoRepository;
use App\Repository\CategoryRepository;
use App\Repository\GenderRepository;
use App\Repository\SiteNameRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class MainController extends AbstractController
{
    /**
     * @Route("/", name="main")
     */
    public function index(GenderRepository $genderRepository, CategoryRepository $categoryRepository, ArticleRepository $articleRepository, BrandLogoRepository $brandLogoRepository, SiteNameRepository $siteNameRepository): Response
    {
        return $this->render('main/index.html.twig', [
            'controller_name' => 'MainController',
            'genders' => $genderRepository->findAll(),
            'categories' => $categoryRepository->findAll(),
            'brandlogos' => $brandLogoRepository->findAll(),
            'sitename' => $siteNameRepository->findOneBy([], [
                'id' => 'DESC'
            ]),
            'articles' => $articleRepository->findBy(array(),array('id'=>'DESC'),3,0)
        ]);
    }
}

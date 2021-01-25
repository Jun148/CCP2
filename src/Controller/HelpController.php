<?php

namespace App\Controller;

use App\Repository\GenderRepository;
use App\Repository\CategoryRepository;
use App\Repository\FeaturesRepository;
use App\Repository\HeadShopRepository;
use App\Repository\SiteNameRepository;
use App\Repository\BrandLogoRepository;
use App\Repository\LearnMoreRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class HelpController extends AbstractController
{
    /**
     * @Route("/help", name="help")
     */
    public function index(GenderRepository $genderRepository, CategoryRepository $categoryRepository, BrandLogoRepository $brandLogoRepository, SiteNameRepository $siteNameRepository, FeaturesRepository $featuresRepository, LearnMoreRepository $learnMoreRepository, HeadShopRepository $headShopRepository): Response
    {
        return $this->render('help/index.html.twig', [
            'controller_name' => 'HelpController',
            'genders' => $genderRepository->findAll(),
            'categories' => $categoryRepository->findAll(),
            'learnmore' => $learnMoreRepository->findOneBy([],[
                'id' => 'DESC'
            ]),
            'sitename' => $siteNameRepository->findOneBy([], [
                'id' => 'DESC'
            ]),
            'headshop' => $headShopRepository->findOneBy([], [
                'id' => 'DESC'
            ]),
            'brandlogos' => $brandLogoRepository->findAll(),
            'features' => $featuresRepository->findAll()
        ]);
    }
}

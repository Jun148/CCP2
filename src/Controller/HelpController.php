<?php

namespace App\Controller;

use App\Repository\BrandLogoRepository;
use App\Repository\CategoryRepository;
use App\Repository\FeaturesRepository;
use App\Repository\GenderRepository;
use App\Repository\SiteNameRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HelpController extends AbstractController
{
    /**
     * @Route("/help", name="help")
     */
    public function index(GenderRepository $genderRepository, CategoryRepository $categoryRepository, BrandLogoRepository $brandLogoRepository, SiteNameRepository $siteNameRepository, FeaturesRepository $featuresRepository): Response
    {
        return $this->render('help/index.html.twig', [
            'controller_name' => 'HelpController',
            'genders' => $genderRepository->findAll(),
            'categories' => $categoryRepository->findAll(),
            'sitename' => $siteNameRepository->findOneBy([], [
                'id' => 'DESC'
            ]),
            'brandlogos' => $brandLogoRepository->findAll(),
            'features' => $featuresRepository->findAll()
        ]);
    }
}

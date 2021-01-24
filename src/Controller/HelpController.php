<?php

namespace App\Controller;

use App\Repository\BrandLogoRepository;
use App\Repository\CategoryRepository;
use App\Repository\GenderRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HelpController extends AbstractController
{
    /**
     * @Route("/help", name="help")
     */
    public function index(GenderRepository $genderRepository, CategoryRepository $categoryRepository, BrandLogoRepository $brandLogoRepository): Response
    {
        return $this->render('help/index.html.twig', [
            'controller_name' => 'HelpController',
            'genders' => $genderRepository->findAll(),
            'categories' => $categoryRepository->findAll(),
            'brandlogos' => $brandLogoRepository->findAll()
        ]);
    }
}

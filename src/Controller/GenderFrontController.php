<?php

namespace App\Controller;

use App\Repository\ArticleRepository;
use App\Repository\BrandLogoRepository;
use App\Repository\CategoryRepository;
use App\Repository\GenderRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;

class GenderFrontController extends AbstractController
{
    /**
     * @Route("/gender/{name}", name="gender_front")
     */
    public function index(GenderRepository $genderRepository, CategoryRepository $categoryRepository, ArticleRepository $articleRepository, BrandLogoRepository $brandLogoRepository, Request $request, $name): Response
    {
        return $this->render('gender_front/index.html.twig', [
            'genders' => $genderRepository->findAll(),
            'categories' => $categoryRepository->findAll(),
            'brandlogos' => $brandLogoRepository->findAll(),
            'articles' => $articleRepository->findBy(array('gender' => $genderRepository->findBy(array('Name' => $name))),array('id'=>'DESC'),3,0)
        ]);
    }
}

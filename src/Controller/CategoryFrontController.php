<?php

namespace App\Controller;

use App\Repository\GenderRepository;
use App\Repository\ArticleRepository;
use App\Repository\CategoryRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;

class CategoryFrontController extends AbstractController
{
    /**
     * @Route("/category/{name}", name="category_front")
     */
    public function index(CategoryRepository $categoryRepository, GenderRepository $genderRepository, ArticleRepository $articleRepository, Request $request, $name): Response
    {
        return $this->render('category_front/index.html.twig', [
            'categories' => $categoryRepository->findAll(),
            'genders' => $genderRepository->findAll(),
            'articles' => $articleRepository->findBy([
                'category' => $categoryRepository->findBy([
                    'Name' => $name
                ])
            ])
        ]);
    }
}
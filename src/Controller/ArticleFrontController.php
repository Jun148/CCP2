<?php

namespace App\Controller;

use App\Entity\Article;
use App\Repository\CategoryRepository;
use App\Repository\GenderRepository;
use App\Repository\SiteNameRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ArticleFrontController extends AbstractController
{
    /**
     * @Route("/article/{id}", name="article_front", methods={"GET"})
     */
    public function index(GenderRepository $genderRepository, CategoryRepository $categoryRepository, Article $article, SiteNameRepository $siteNameRepository): Response
    {
        return $this->render('article_front/index.html.twig', [
            'genders' => $genderRepository->findAll(),
            'categories' => $categoryRepository->findAll(),
            'sitename' => $siteNameRepository->findOneBy([], [
                'id' => 'DESC'
            ]),
            'article' => $article
        ]);
    }
}

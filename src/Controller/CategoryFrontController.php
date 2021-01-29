<?php

namespace App\Controller;

use App\Entity\Article;
use App\Data\SearchData;
use App\Entity\Category;
use App\Form\SearchFormType;
use App\Repository\GenderRepository;
use App\Repository\ArticleRepository;
use App\Repository\CategoryRepository;
use App\Repository\HeadShopRepository;
use App\Repository\SiteNameRepository;
use Doctrine\ORM\EntityManagerInterface;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class CategoryFrontController extends AbstractController
{
    /**
     * @Route("/category/{id}", name="category_front")
     */
    public function index(CategoryRepository $categoryRepository, GenderRepository $genderRepository, ArticleRepository $articleRepository, SiteNameRepository $siteNameRepository, HeadShopRepository $headShopRepository, $id, EntityManagerInterface $em, PaginatorInterface $paginator, Request $request): Response
    {
        $data = new SearchData();
        $form = $this->createForm(SearchFormType::class, $data);
        $form->handleRequest($request);
        $articles = $articleRepository->findSearch($data);
        $pagination = $paginator->paginate(
            $em->getRepository(Article::class)->findBy(array('category'=>$id)),
            $request->query->getInt('page', 1),12
        );
        
        return $this->render('category_front/index.html.twig', [
            'categories' => $categoryRepository->findAll(),
            'genders' => $genderRepository->findAll(),
            'sitename' => $siteNameRepository->findOneBy([], [
                'id' => 'DESC'
            ]),
            'headshop' => $headShopRepository->findOneBy([], [
                'id' => 'DESC'
            ]),
            'pagination' => $pagination,
            'articles' => $articles,
            'form' => $form->createView()
        ]);
    }
}
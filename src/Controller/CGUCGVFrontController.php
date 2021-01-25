<?php

namespace App\Controller;

use App\Repository\CGUCGVRepository;
use App\Repository\GenderRepository;
use App\Repository\CategoryRepository;
use App\Repository\HeadShopRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class CGUCGVFrontController extends AbstractController
{
    /**
     * @Route("/CGU/CGV", name="c_g_u_c_g_v_front")
     */
    public function index(CategoryRepository $categoryRepository, GenderRepository $genderRepository, CGUCGVRepository $cGUCGVRepository, HeadShopRepository $headShopRepository): Response
    {
        return $this->render('cgucgv_front/index.html.twig', [
            'controller_name' => 'CGUCGVFrontController',
            'genders' => $genderRepository->findAll(),
            'categories' => $categoryRepository->findAll(),
            'headshop' => $headShopRepository->findOneBy([], [
                'id' => 'DESC'
            ]),
            'cgucgv' => $cGUCGVRepository->findOneBy([], [
                'id' => 'DESC'
            ])
        ]);
    }
}

<?php

namespace App\Controller;

use App\Entity\Order;
use App\Repository\GenderRepository;
use App\Repository\ArticleRepository;
use App\Repository\CategoryRepository;
use App\Repository\HeadShopRepository;
use App\Repository\SiteNameRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class OrderController extends AbstractController
{
    /**
     * @Route("/order", name="order")
     */
    public function index(GenderRepository $genderRepository, CategoryRepository $categoryRepository, SiteNameRepository $siteNameRepository, HeadShopRepository $headShopRepository, SessionInterface $session, ArticleRepository $articleRepository, Request $request): Response
    {
        $user = $this->getUser();
        $cart = $session->get('cart', []);
        $cartWithData = [];

        foreach($cart as $id => $quantity) {
            $cartWithData[] = [
                'article' => $articleRepository->find($id),
                'quantity' => $quantity
            ];
        }
        $total = 0;
        foreach($cartWithData as $order) {
            $totalItem = $order['article']->getPrice() * $order['quantity'];
            $total += $totalItem;
        }
        
        return $this->render('order/index.html.twig', [
            'genders' => $genderRepository->findAll(),
            'categories' => $categoryRepository->findAll(),
            'sitename' => $siteNameRepository->findOneBy([], [
                'id' => 'DESC'
            ]),
            'headshop' => $headShopRepository->findOneBy([], [
                'id' => 'DESC'
            ]),
            'user' => $user,
            'orders' => $cartWithData,
            'total' => $total
        ]);
    }
}

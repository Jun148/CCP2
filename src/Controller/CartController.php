<?php

namespace App\Controller;

use App\Entity\Article;
use App\Entity\Cart;
use DateTime;
use App\Repository\GenderRepository;
use App\Repository\ArticleRepository;
use App\Repository\CartRepository;
use App\Repository\CategoryRepository;
use App\Repository\HeadShopRepository;
use App\Repository\SiteNameRepository;
use App\Repository\UserRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class CartController extends AbstractController
{
    /**
     * @Route("/cart", name="cart")
     */
    public function index(SessionInterface $session, GenderRepository $genderRepository, CategoryRepository $categoryRepository, ArticleRepository $articleRepository, SiteNameRepository $siteNameRepository, HeadShopRepository $headShopRepository, EntityManagerInterface $em): Response
    {
        $cart = $session->get('cart', []);
        $cartWithData = [];

        foreach($cart as $id => $quantity) {
            $cartWithData[] = [
                'article' => $articleRepository->find($id),
                'quantity' => $quantity
            ];
        }
        

        $total = 0;
        foreach($cartWithData as $item) {
            $totalItem = $item['article']->getPrice() * $item['quantity'];
            $total += $totalItem;
        }
        return $this->render('cart/index.html.twig', [
            'genders' => $genderRepository->findAll(),
            'categories' => $categoryRepository->findAll(),
            'sitename' => $siteNameRepository->findOneBy([], [
                'id' => 'DESC'
            ]),
            'headshop' => $headShopRepository->findOneBy([], [
                'id' => 'DESC'
            ]),
            'items' => $cartWithData,
            'total' => $total
        ]);
    }

    /**
     * @Route("/cart/add/{id}", name="cart_add", methods={"POST"})
     */
    public function add($id, SessionInterface $session, Request $request, Article $article)
    {
        $quantity = $request->request->get('qty');
            $cart = $session->get('cart', []);
            if(!empty($cart[$id])) {
                $cart[$id]++;
                } else {
                $cart[$id] = $quantity;
                $session->set('cart', $cart);
            }
       

        return $this->redirectToRoute("cart");
    }

    /**
     * @Route("/cart/remove/{id}", name="cart_remove")
     */
    public function remove($id, SessionInterface $session)
    {
        $cart = $session->get('cart', []);

        if(!empty($cart[$id])) {
            unset($cart[$id]);
        }

        $session->set('cart', $cart);

        return $this->redirectToRoute("cart");
    }
}
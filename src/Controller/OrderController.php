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
        if(!$cart){
            return $this->redirectToRoute("cart");
        }

        else {
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

    /**
     * @Route("/order/validation", name="order_validation")
     */
    public function validation(GenderRepository $genderRepository, CategoryRepository $categoryRepository, SiteNameRepository $siteNameRepository, HeadShopRepository $headShopRepository, SessionInterface $session, ArticleRepository $articleRepository, Request $request): Response
    {
        $user = $this->getUser();
        $cart = $session->get('cart', []);
        if(!$cart){
            return $this->redirectToRoute("cart");
        }else{
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

        $article=$order['article'];
        
        if($request->isMethod('POST')){
            $em = $this->getDoctrine()->getManager();
            $user = $this->getUser();
            $payment = $request->get('payment');
            $order = (new Order())
                -> setPayment($payment)
                -> setDate(new \DateTime('now'))
                -> setUpdatedAt(new \DateTime('now'))
                -> setUser($user)
                -> setStatus('Pending')
                -> addArticle($article);
            $em = $this->getDoctrine()->getManager();
            $em->persist($order);
            $em->flush();
            $cart = $session->remove('cart');


        }else{
            $this->addFlash('error', 'One of the fields is not valid');
        }

        return $this->render('order/validation.html.twig', [
            'genders' => $genderRepository->findAll(),
            'categories' => $categoryRepository->findAll(),
            'sitename' => $siteNameRepository->findOneBy([], [
                'id' => 'DESC'
            ]),
            'headshop' => $headShopRepository->findOneBy([], [
                'id' => 'DESC'
            ]),
        ]);

    }}
}

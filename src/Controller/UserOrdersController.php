<?php

namespace App\Controller;

use App\Entity\Order;
use App\Repository\GenderRepository;
use App\Repository\CategoryRepository;
use App\Repository\HeadShopRepository;
use App\Repository\OrderRepository;
use App\Repository\SiteNameRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;

class UserOrdersController extends AbstractController
{
    /**
     * @Route("/user/orders", name="user_orders")
     */
    public function index(GenderRepository $genderRepository, CategoryRepository $categoryRepository, SiteNameRepository $siteNameRepository, HeadShopRepository $headShopRepository, OrderRepository $orderRepository): Response
    {
        $user = $this->getUser();
        return $this->render('user_orders/index.html.twig', [
            'controller_name' => 'UserProfileController',
            'genders' => $genderRepository->findAll(),
            'sitename' => $siteNameRepository->findOneBy([], [
                'id' => 'DESC'
            ]),
            'headshop' => $headShopRepository->findOneBy([], [
                'id' => 'DESC'
            ]),
            'categories' => $categoryRepository->findAll(),
            'orders' => $orderRepository->findBy(array('user' => $user))
        ]);
    }

    /**
     * @Route("/user/orders/read{id}", name="user_orders_read")
     */
    public function read(GenderRepository $genderRepository, CategoryRepository $categoryRepository, SiteNameRepository $siteNameRepository, HeadShopRepository $headShopRepository, Order $order, Request $request): Response
    {
        if($request->isMethod('POST')){
            $em = $this->getDoctrine()->getManager();
            $status = $request->get('status');
            $order-> setStatus($status);
            $em = $this->getDoctrine()->getManager();
            $em->persist($order);
            $em->flush();
            $this->addFlash('message', 'Order Cancelled');
        }
        return $this->render('user_orders/read.html.twig', [
            'controller_name' => 'UserProfileController',
            'genders' => $genderRepository->findAll(),
            'sitename' => $siteNameRepository->findOneBy([], [
                'id' => 'DESC'
            ]),
            'headshop' => $headShopRepository->findOneBy([], [
                'id' => 'DESC'
            ]),
            'categories' => $categoryRepository->findAll(),
            'order' => $order
        ]);
    }
}

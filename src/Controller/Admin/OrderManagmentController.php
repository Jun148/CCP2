<?php

namespace App\Controller\Admin;

use App\Entity\Order;
use App\Form\OrderManagmentType;
use App\Repository\OrderRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class OrderManagmentController extends AbstractController
{
    /**
     * @Route("admin/order/managment", name="order_managment")
     */
    public function index(OrderRepository $orderRepository): Response
    {
        return $this->render('order_managment/index.html.twig', [
            'orders'=>$orderRepository->findBy(array(), array('Date'=>'DESC')),
        ]);
    }

    /**
     * @Route("/read/{id}", name="read_order")
     */
    public function read(Order $order, Request $request)
    {
        $form = $this->createForm(OrderManagmentType::class, $order);

        if($order->getStatus() == 'Pending'){

            $form->handleRequest($request);

            if ($form->isSubmitted() && $form->isValid()){
                $order->setUpdatedAt(new \DateTime('now'));
                $em = $this->getDoctrine()->getManager();
                $em->flush();
            }
        }

        return $this->render('order_managment/read.html.twig', [
            'order' => $order,
            'form' => $form->createView()
        ]);
    }
}


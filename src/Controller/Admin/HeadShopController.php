<?php

namespace App\Controller\Admin;

use App\Entity\HeadShop;
use App\Form\HeadShopType;
use App\Repository\HeadShopRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("admin/head/shop")
 */
class HeadShopController extends AbstractController
{
    /**
     * @Route("/", name="head_shop_index", methods={"GET"})
     */
    public function index(HeadShopRepository $headShopRepository): Response
    {
        return $this->render('head_shop/index.html.twig', [
            'head_shops' => $headShopRepository->findAll(),
        ]);
    }

    /**
     * @Route("/new", name="head_shop_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $headShop = new HeadShop();
        $form = $this->createForm(HeadShopType::class, $headShop);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($headShop);
            $entityManager->flush();

            return $this->redirectToRoute('head_shop_index');
        }

        return $this->render('head_shop/new.html.twig', [
            'head_shop' => $headShop,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="head_shop_show", methods={"GET"})
     */
    public function show(HeadShop $headShop): Response
    {
        return $this->render('head_shop/show.html.twig', [
            'head_shop' => $headShop,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="head_shop_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, HeadShop $headShop): Response
    {
        $form = $this->createForm(HeadShopType::class, $headShop);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('head_shop_index');
        }

        return $this->render('head_shop/edit.html.twig', [
            'head_shop' => $headShop,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="head_shop_delete", methods={"DELETE"})
     */
    public function delete(Request $request, HeadShop $headShop): Response
    {
        if ($this->isCsrfTokenValid('delete'.$headShop->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($headShop);
            $entityManager->flush();
        }

        return $this->redirectToRoute('head_shop_index');
    }
}

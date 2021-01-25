<?php

namespace App\Controller\Admin;

use App\Entity\FootShop;
use App\Form\FootShopType;
use App\Repository\FootShopRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("admin/foot/shop")
 */
class FootShopController extends AbstractController
{
    /**
     * @Route("/", name="foot_shop_index", methods={"GET"})
     */
    public function index(FootShopRepository $footShopRepository): Response
    {
        return $this->render('foot_shop/index.html.twig', [
            'foot_shops' => $footShopRepository->findAll(),
        ]);
    }

    /**
     * @Route("/new", name="foot_shop_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $footShop = new FootShop();
        $form = $this->createForm(FootShopType::class, $footShop);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($footShop);
            $entityManager->flush();

            return $this->redirectToRoute('foot_shop_index');
        }

        return $this->render('foot_shop/new.html.twig', [
            'foot_shop' => $footShop,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="foot_shop_show", methods={"GET"})
     */
    public function show(FootShop $footShop): Response
    {
        return $this->render('foot_shop/show.html.twig', [
            'foot_shop' => $footShop,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="foot_shop_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, FootShop $footShop): Response
    {
        $form = $this->createForm(FootShopType::class, $footShop);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('foot_shop_index');
        }

        return $this->render('foot_shop/edit.html.twig', [
            'foot_shop' => $footShop,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="foot_shop_delete", methods={"DELETE"})
     */
    public function delete(Request $request, FootShop $footShop): Response
    {
        if ($this->isCsrfTokenValid('delete'.$footShop->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($footShop);
            $entityManager->flush();
        }

        return $this->redirectToRoute('foot_shop_index');
    }
}

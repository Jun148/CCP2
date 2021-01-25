<?php

namespace App\Controller\Admin;

use App\Entity\ProductCare;
use App\Form\ProductCareType;
use App\Repository\ProductCareRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("admin/product/care")
 */
class ProductCareController extends AbstractController
{
    /**
     * @Route("/", name="product_care_index", methods={"GET"})
     */
    public function index(ProductCareRepository $productCareRepository): Response
    {
        return $this->render('product_care/index.html.twig', [
            'product_cares' => $productCareRepository->findAll(),
        ]);
    }

    /**
     * @Route("/new", name="product_care_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $productCare = new ProductCare();
        $form = $this->createForm(ProductCareType::class, $productCare);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($productCare);
            $entityManager->flush();

            return $this->redirectToRoute('product_care_index');
        }

        return $this->render('product_care/new.html.twig', [
            'product_care' => $productCare,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="product_care_show", methods={"GET"})
     */
    public function show(ProductCare $productCare): Response
    {
        return $this->render('product_care/show.html.twig', [
            'product_care' => $productCare,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="product_care_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, ProductCare $productCare): Response
    {
        $form = $this->createForm(ProductCareType::class, $productCare);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('product_care_index');
        }

        return $this->render('product_care/edit.html.twig', [
            'product_care' => $productCare,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="product_care_delete", methods={"DELETE"})
     */
    public function delete(Request $request, ProductCare $productCare): Response
    {
        if ($this->isCsrfTokenValid('delete'.$productCare->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($productCare);
            $entityManager->flush();
        }

        return $this->redirectToRoute('product_care_index');
    }
}

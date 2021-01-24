<?php

namespace App\Controller\Admin;

use App\Entity\BrandLogo;
use App\Form\BrandLogoType;
use App\Repository\BrandLogoRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("admin/brand/logo")
 */
class BrandLogoController extends AbstractController
{
    /**
     * @Route("/", name="brand_logo_index", methods={"GET"})
     */
    public function index(BrandLogoRepository $brandLogoRepository): Response
    {
        return $this->render('brand_logo/index.html.twig', [
            'brand_logos' => $brandLogoRepository->findAll(),
        ]);
    }

    /**
     * @Route("/new", name="brand_logo_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $brandLogo = new BrandLogo();
        $form = $this->createForm(BrandLogoType::class, $brandLogo);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($brandLogo);
            $entityManager->flush();

            return $this->redirectToRoute('brand_logo_index');
        }

        return $this->render('brand_logo/new.html.twig', [
            'brand_logo' => $brandLogo,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="brand_logo_show", methods={"GET"})
     */
    public function show(BrandLogo $brandLogo): Response
    {
        return $this->render('brand_logo/show.html.twig', [
            'brand_logo' => $brandLogo,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="brand_logo_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, BrandLogo $brandLogo): Response
    {
        $form = $this->createForm(BrandLogoType::class, $brandLogo);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('brand_logo_index');
        }

        return $this->render('brand_logo/edit.html.twig', [
            'brand_logo' => $brandLogo,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="brand_logo_delete", methods={"DELETE"})
     */
    public function delete(Request $request, BrandLogo $brandLogo): Response
    {
        if ($this->isCsrfTokenValid('delete'.$brandLogo->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($brandLogo);
            $entityManager->flush();
        }

        return $this->redirectToRoute('brand_logo_index');
    }
}

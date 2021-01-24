<?php

namespace App\Controller\Admin;

use App\Entity\SiteName;
use App\Form\SiteNameType;
use App\Repository\SiteNameRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("admin/site/name")
 */
class SiteNameController extends AbstractController
{
    /**
     * @Route("/", name="site_name_index", methods={"GET"})
     */
    public function index(SiteNameRepository $siteNameRepository): Response
    {
        return $this->render('site_name/index.html.twig', [
            'site_names' => $siteNameRepository->findAll(),
        ]);
    }

    /**
     * @Route("/new", name="site_name_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $siteName = new SiteName();
        $form = $this->createForm(SiteNameType::class, $siteName);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($siteName);
            $entityManager->flush();

            return $this->redirectToRoute('site_name_index');
        }

        return $this->render('site_name/new.html.twig', [
            'site_name' => $siteName,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="site_name_show", methods={"GET"})
     */
    public function show(SiteName $siteName): Response
    {
        return $this->render('site_name/show.html.twig', [
            'site_name' => $siteName,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="site_name_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, SiteName $siteName): Response
    {
        $form = $this->createForm(SiteNameType::class, $siteName);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('site_name_index');
        }

        return $this->render('site_name/edit.html.twig', [
            'site_name' => $siteName,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="site_name_delete", methods={"DELETE"})
     */
    public function delete(Request $request, SiteName $siteName): Response
    {
        if ($this->isCsrfTokenValid('delete'.$siteName->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($siteName);
            $entityManager->flush();
        }

        return $this->redirectToRoute('site_name_index');
    }
}

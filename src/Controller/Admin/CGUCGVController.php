<?php

namespace App\Controller\Admin;

use App\Entity\CGUCGV;
use App\Form\CGUCGVType;
use App\Repository\CGUCGVRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("admin/CGU/CGV")
 */
class CGUCGVController extends AbstractController
{
    /**
     * @Route("/", name="c_g_u_c_g_v_index", methods={"GET"})
     */
    public function index(CGUCGVRepository $cGUCGVRepository): Response
    {
        return $this->render('cgucgv/index.html.twig', [
            'c_g_u_c_g_vs' => $cGUCGVRepository->findAll(),
        ]);
    }

    /**
     * @Route("/new", name="c_g_u_c_g_v_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $cGUCGV = new CGUCGV();
        $form = $this->createForm(CGUCGVType::class, $cGUCGV);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($cGUCGV);
            $entityManager->flush();

            return $this->redirectToRoute('c_g_u_c_g_v_index');
        }

        return $this->render('cgucgv/new.html.twig', [
            'c_g_u_c_g_v' => $cGUCGV,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="c_g_u_c_g_v_show", methods={"GET"})
     */
    public function show(CGUCGV $cGUCGV): Response
    {
        return $this->render('cgucgv/show.html.twig', [
            'c_g_u_c_g_v' => $cGUCGV,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="c_g_u_c_g_v_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, CGUCGV $cGUCGV): Response
    {
        $form = $this->createForm(CGUCGVType::class, $cGUCGV);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('c_g_u_c_g_v_index');
        }

        return $this->render('cgucgv/edit.html.twig', [
            'c_g_u_c_g_v' => $cGUCGV,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="c_g_u_c_g_v_delete", methods={"DELETE"})
     */
    public function delete(Request $request, CGUCGV $cGUCGV): Response
    {
        if ($this->isCsrfTokenValid('delete'.$cGUCGV->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($cGUCGV);
            $entityManager->flush();
        }

        return $this->redirectToRoute('c_g_u_c_g_v_index');
    }
}

<?php

namespace App\Controller\Admin;

use App\Entity\LearnMore;
use App\Form\LearnMoreType;
use App\Repository\LearnMoreRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("admin/learn/more")
 */
class LearnMoreController extends AbstractController
{
    /**
     * @Route("/", name="learn_more_index", methods={"GET"})
     */
    public function index(LearnMoreRepository $learnMoreRepository): Response
    {
        return $this->render('learn_more/index.html.twig', [
            'learn_mores' => $learnMoreRepository->findAll(),
        ]);
    }

    /**
     * @Route("/new", name="learn_more_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $learnMore = new LearnMore();
        $form = $this->createForm(LearnMoreType::class, $learnMore);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($learnMore);
            $entityManager->flush();

            return $this->redirectToRoute('learn_more_index');
        }

        return $this->render('learn_more/new.html.twig', [
            'learn_more' => $learnMore,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="learn_more_show", methods={"GET"})
     */
    public function show(LearnMore $learnMore): Response
    {
        return $this->render('learn_more/show.html.twig', [
            'learn_more' => $learnMore,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="learn_more_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, LearnMore $learnMore): Response
    {
        $form = $this->createForm(LearnMoreType::class, $learnMore);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('learn_more_index');
        }

        return $this->render('learn_more/edit.html.twig', [
            'learn_more' => $learnMore,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="learn_more_delete", methods={"DELETE"})
     */
    public function delete(Request $request, LearnMore $learnMore): Response
    {
        if ($this->isCsrfTokenValid('delete'.$learnMore->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($learnMore);
            $entityManager->flush();
        }

        return $this->redirectToRoute('learn_more_index');
    }
}

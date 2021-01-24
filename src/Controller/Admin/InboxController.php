<?php

namespace App\Controller\Admin;

use DateTime;
use App\Entity\Contact;
use App\Form\InboxType;
use App\Repository\ContactRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

/**
 * @Route("admin/inbox")
 */

class InboxController extends AbstractController
{
    /**
     * @Route("/", name="inbox")
     */
    public function index(ContactRepository $contactRepository): Response
    {
        return $this->render('inbox/index.html.twig', [
            'contacts'=>$contactRepository->findAll()
        ]);
    }

    /**
     * @Route("/read/{id}", name="read_inbox")
     */
    public function read(Contact $contact, Request $request)
    {
        $form = $this->createForm(InboxType::class, $contact);

        if($contact->getReply() == null){

            $form->handleRequest($request);

            if ($form->isSubmitted() && $form->isValid()){
                $contact->setRepliedAt(new \DateTime('now'));
                $em = $this->getDoctrine()->getManager();
                $em->flush();
            }
        }

        return $this->render('inbox/read.html.twig', [
            'contact' => $contact,
            'form' => $form->createView()
        ]);
    }
}

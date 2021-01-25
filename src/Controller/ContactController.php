<?php

namespace App\Controller;

use App\Entity\Contact;
use App\Form\ContactType;
use App\Repository\CategoryRepository;
use App\Repository\GenderRepository;
use App\Repository\ContactRepository;
use App\Repository\SiteNameRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ContactController extends AbstractController
{
    /**
     * @Route("/contact", name="contact")
     */
    public function index(Request $request, GenderRepository $genderRepository, CategoryRepository $categoryRepository, SiteNameRepository $siteNameRepository): Response
    {
        $contact = new Contact();
        $form = $this->createForm(ContactType::class, $contact);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $contact->setReply(null);
            $contact->setRepliedAt(null);
            $contact->setSendAt(new \DateTime('now'));

            $em = $this->getDoctrine()->getManager();
            $em->persist($contact);
            $em->flush();
        }
        return $this->render('contact/index.html.twig', [
            'controller_name' => 'ContactController',
            'genders' => $genderRepository->findAll(),
            'categories' => $categoryRepository->findAll(),
            'sitename' => $siteNameRepository->findOneBy([], [
                'id' => 'DESC'
            ]),
            'contact' => $form->createView()
        ]);
    }
}

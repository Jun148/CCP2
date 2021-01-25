<?php

namespace App\Controller;

use App\Repository\GenderRepository;
use App\Repository\CategoryRepository;
use App\Repository\HeadShopRepository;
use App\Repository\SiteNameRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;

class SecurityController extends AbstractController
{
    /**
     * @Route("/login", name="app_login")
     */
    public function login(AuthenticationUtils $authenticationUtils, GenderRepository $genderRepository, CategoryRepository $categoryRepository, SiteNameRepository $siteNameRepository, HeadShopRepository $headShopRepository): Response
    {
        // if ($this->getUser()) {
        //     return $this->redirectToRoute('target_path');
        // }

        // get the login error if there is one
        $error = $authenticationUtils->getLastAuthenticationError();
        // last username entered by the user
        $lastUsername = $authenticationUtils->getLastUsername();

        return $this->render('security/login.html.twig', [
            'last_username' => $lastUsername,
            'error' => $error,
            'genders' => $genderRepository->findAll(),
            'sitename' => $siteNameRepository->findOneBy([], [
                'id' => 'DESC'
            ]),
            'headshop' => $headShopRepository->findOneBy([], [
                'id' => 'DESC'
            ]),
            'categories' => $categoryRepository->findAll(),
            ]);
    }

    /**
     * @Route("/logout", name="app_logout")
     */
    public function logout()
    {
        throw new \LogicException('This method can be blank - it will be intercepted by the logout key on your firewall.');
    }
}

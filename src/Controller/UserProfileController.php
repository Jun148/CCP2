<?php

namespace App\Controller;

use App\Form\UserProfileType;
use App\Repository\CategoryRepository;
use App\Repository\GenderRepository;
use App\Repository\UserRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class UserProfileController extends AbstractController
{
    /**
     * @Route("/user/profile", name="user_profile")
     */
    public function index(UserRepository $userRepository, GenderRepository $genderRepository, CategoryRepository $categoryRepository): Response
    {
        return $this->render('user_profile/index.html.twig', [
            'controller_name' => 'UserProfileController',
            'genders' => $genderRepository->findAll(),
            'categories' => $categoryRepository->findAll(),
        ]);
    }

    /**
     * @Route("/user/profile/edit/", name="user_profile_edit")
     */
    public function editProfile(Request $request, GenderRepository $genderRepository, CategoryRepository $categoryRepository)
    {
        $user = $this->getUser();
        $form = $this->createForm(UserProfileType::class, $user);
        $form->handleRequest($request);
        
        if ($form->isSubmitted() && $form->isValid()) { 
            $em = $this->getDoctrine()->getManager();
            $em->persist($user);
            $em->flush();

            $this->addFlash('message', 'Profile updated');
            return $this->redirectToRoute('user_profile');
        }

        return $this->render('user_profile/editprofile.html.twig', [
            'form' => $form->createView(),
            'genders' => $genderRepository->findAll(),
            'categories' => $categoryRepository->findAll(),
        ]);
    }

    /**
     * @Route("/user/password/edit/", name="user_password_edit")
     */
    public function editPassword(Request $request, UserPasswordEncoderInterface $passwordEncoder, GenderRepository $genderRepository, CategoryRepository $categoryRepository)
    {
        if($request->isMethod('POST')){
            $em = $this->getDoctrine()->getManager();
            $user = $this->getUser();
            $password = $request->get('password');
            $newpassword = $request->get('newpassword');
            $checkpassword = $request->get('checkpassword');
            $confirmCheck = $passwordEncoder->isPasswordValid($user, $password);

            if($confirmCheck === true && $newpassword == $checkpassword){
                $user->setPassword($passwordEncoder->encodePassword(
                    $user,
                    $request->request->get('newpassword')
                ));
                $em->flush();
                $this->addFlash('message', 'Password updated');

                return $this->redirectToRoute('user_profile');
            } else {
                $this->addFlash('error', 'One of the fields is not valid');
            }
        }
        return $this->render('user_profile/editpassword.html.twig', [
            'genders' => $genderRepository->findAll(),
            'categories' => $categoryRepository->findAll(),
        ]);
    }
}

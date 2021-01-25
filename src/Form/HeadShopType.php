<?php

namespace App\Form;

use App\Entity\Links;
use App\Entity\Images;
use App\Entity\HeadShop;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\OptionsResolver\OptionsResolver;

class HeadShopType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('Title')
            ->add('Subtitle')
            ->add('image', EntityType::class, [
                'class' => Images::class,
                'choice_label' => 'image',
            ])
            ->add('link', EntityType::class, [
                'class' => Links::class,
                'choice_label' => 'name',
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => HeadShop::class,
        ]);
    }
}

<?php

namespace App\Form;

use App\Entity\Images;
use App\Entity\ProductCare;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ProductCareType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('Title')
            ->add('Subtitle')
            ->add('Text')
            ->add('image', EntityType::class, [
                'class' => Images::class,
                'choice_label' => 'image',
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => ProductCare::class,
        ]);
    }
}

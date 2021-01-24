<?php

namespace App\Form;

use App\Entity\Gender;
use App\Entity\Images;
use App\Entity\Article;
use App\Entity\Category;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ArticleType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('Name')
            ->add('Price')
            ->add('Description')
            ->add('gender', EntityType::class, [
                'class' => Gender::class,
                'choice_label' => 'name',
                'required' => 'true',
            ])
            ->add('category', EntityType::class, [
                'class' => Category:: class,
                'choice_label' => 'name',
                'required' => 'true',
            ])
            ->add('images', EntityType::class, [
                'class' => Images::class,
                'choice_label' => 'image',
                'multiple' => true
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Article::class,
        ]);
    }
}

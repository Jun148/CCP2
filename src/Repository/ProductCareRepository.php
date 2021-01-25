<?php

namespace App\Repository;

use App\Entity\ProductCare;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method ProductCare|null find($id, $lockMode = null, $lockVersion = null)
 * @method ProductCare|null findOneBy(array $criteria, array $orderBy = null)
 * @method ProductCare[]    findAll()
 * @method ProductCare[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ProductCareRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, ProductCare::class);
    }

    // /**
    //  * @return ProductCare[] Returns an array of ProductCare objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('p')
            ->andWhere('p.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('p.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?ProductCare
    {
        return $this->createQueryBuilder('p')
            ->andWhere('p.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}

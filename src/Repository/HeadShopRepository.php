<?php

namespace App\Repository;

use App\Entity\HeadShop;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method HeadShop|null find($id, $lockMode = null, $lockVersion = null)
 * @method HeadShop|null findOneBy(array $criteria, array $orderBy = null)
 * @method HeadShop[]    findAll()
 * @method HeadShop[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class HeadShopRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, HeadShop::class);
    }

    // /**
    //  * @return HeadShop[] Returns an array of HeadShop objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('h')
            ->andWhere('h.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('h.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?HeadShop
    {
        return $this->createQueryBuilder('h')
            ->andWhere('h.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}

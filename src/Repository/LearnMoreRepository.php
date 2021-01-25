<?php

namespace App\Repository;

use App\Entity\LearnMore;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method LearnMore|null find($id, $lockMode = null, $lockVersion = null)
 * @method LearnMore|null findOneBy(array $criteria, array $orderBy = null)
 * @method LearnMore[]    findAll()
 * @method LearnMore[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class LearnMoreRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, LearnMore::class);
    }

    // /**
    //  * @return LearnMore[] Returns an array of LearnMore objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('l')
            ->andWhere('l.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('l.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?LearnMore
    {
        return $this->createQueryBuilder('l')
            ->andWhere('l.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}

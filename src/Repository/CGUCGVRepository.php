<?php

namespace App\Repository;

use App\Entity\CGUCGV;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method CGUCGV|null find($id, $lockMode = null, $lockVersion = null)
 * @method CGUCGV|null findOneBy(array $criteria, array $orderBy = null)
 * @method CGUCGV[]    findAll()
 * @method CGUCGV[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class CGUCGVRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, CGUCGV::class);
    }

    // /**
    //  * @return CGUCGV[] Returns an array of CGUCGV objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('c.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?CGUCGV
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}

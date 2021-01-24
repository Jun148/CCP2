<?php

namespace App\Repository;

use App\Entity\SiteName;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method SiteName|null find($id, $lockMode = null, $lockVersion = null)
 * @method SiteName|null findOneBy(array $criteria, array $orderBy = null)
 * @method SiteName[]    findAll()
 * @method SiteName[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class SiteNameRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, SiteName::class);
    }

    // /**
    //  * @return SiteName[] Returns an array of SiteName objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('s')
            ->andWhere('s.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('s.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?SiteName
    {
        return $this->createQueryBuilder('s')
            ->andWhere('s.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}

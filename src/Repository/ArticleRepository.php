<?php

namespace App\Repository;

use App\Entity\Article;
use App\Data\SearchData;
use Doctrine\Persistence\ManagerRegistry;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;

/**
 * @method Article|null find($id, $lockMode = null, $lockVersion = null)
 * @method Article|null findOneBy(array $criteria, array $orderBy = null)
 * @method Article[]    findAll()
 * @method Article[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ArticleRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Article::class);
    }

    /**
     * Récupère les articles en lien avec une recherche
     * @return Article[]
     */
    public function findSearch(SearchData $search): array
    {
        $query = $this
            ->createQueryBuilder('a')
            ->select('g', 'a')
            ->join('a.gender', 'g');
        
        if(!empty($search->q)) {
            $query = $query
                ->andWhere('a.Name LIKE :q')
                ->setParameter('q', "%{$search->q}%");
        }

        if(!empty($search->min)) {
            $query = $query
                ->andWhere('a.Price >= :min')
                ->setParameter('min', $search->min);
        }

        if(!empty($search->max)) {
            $query = $query
                ->andWhere('a.Price <= :max')
                ->setParameter('max', $search->max);
        }

        if(!empty($search->gender)) {
            $query = $query
                ->andWhere('g.id IN (:genders)')
                ->setParameter('genders', $search->genders);
        }

        return $query->getQuery()->getResult();
    }
    
    // /**
    //  * @return Article[] Returns an array of Article objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('a.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Article
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}

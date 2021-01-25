<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210125080715 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE images ADD productcare_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE images ADD CONSTRAINT FK_E01FBE6A693F5B62 FOREIGN KEY (productcare_id) REFERENCES product_care (id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_E01FBE6A693F5B62 ON images (productcare_id)');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE images DROP FOREIGN KEY FK_E01FBE6A693F5B62');
        $this->addSql('DROP INDEX UNIQ_E01FBE6A693F5B62 ON images');
        $this->addSql('ALTER TABLE images DROP productcare_id');
    }
}

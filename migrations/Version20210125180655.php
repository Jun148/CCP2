<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210125180655 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE images ADD headshop_id INT DEFAULT NULL, ADD footshop_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE images ADD CONSTRAINT FK_E01FBE6A799D29A0 FOREIGN KEY (headshop_id) REFERENCES head_shop (id)');
        $this->addSql('ALTER TABLE images ADD CONSTRAINT FK_E01FBE6A88B078D6 FOREIGN KEY (footshop_id) REFERENCES foot_shop (id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_E01FBE6A799D29A0 ON images (headshop_id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_E01FBE6A88B078D6 ON images (footshop_id)');
        $this->addSql('ALTER TABLE links ADD headshop_id INT DEFAULT NULL, ADD footshop_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE links ADD CONSTRAINT FK_D182A118799D29A0 FOREIGN KEY (headshop_id) REFERENCES head_shop (id)');
        $this->addSql('ALTER TABLE links ADD CONSTRAINT FK_D182A11888B078D6 FOREIGN KEY (footshop_id) REFERENCES foot_shop (id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_D182A118799D29A0 ON links (headshop_id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_D182A11888B078D6 ON links (footshop_id)');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE images DROP FOREIGN KEY FK_E01FBE6A799D29A0');
        $this->addSql('ALTER TABLE images DROP FOREIGN KEY FK_E01FBE6A88B078D6');
        $this->addSql('DROP INDEX UNIQ_E01FBE6A799D29A0 ON images');
        $this->addSql('DROP INDEX UNIQ_E01FBE6A88B078D6 ON images');
        $this->addSql('ALTER TABLE images DROP headshop_id, DROP footshop_id');
        $this->addSql('ALTER TABLE links DROP FOREIGN KEY FK_D182A118799D29A0');
        $this->addSql('ALTER TABLE links DROP FOREIGN KEY FK_D182A11888B078D6');
        $this->addSql('DROP INDEX UNIQ_D182A118799D29A0 ON links');
        $this->addSql('DROP INDEX UNIQ_D182A11888B078D6 ON links');
        $this->addSql('ALTER TABLE links DROP headshop_id, DROP footshop_id');
    }
}

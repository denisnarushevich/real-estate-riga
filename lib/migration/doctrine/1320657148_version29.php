<?php
/**
 * This class has been auto-generated by the Doctrine ORM Framework
 */
class Version29 extends Doctrine_Migration_Base
{
    public function up()
    {
        $this->removeColumn('listing', 'description');
        $this->addColumn('listing_translation', 'description', 'string', '', array(
             ));
    }

    public function down()
    {
        $this->addColumn('listing', 'description', 'string', '', array(
             ));
        $this->removeColumn('listing_translation', 'description');
    }
}
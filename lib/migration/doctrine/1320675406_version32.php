<?php
/**
 * This class has been auto-generated by the Doctrine ORM Framework
 */
class Version32 extends Doctrine_Migration_Base
{
    public function up()
    {
        $this->addColumn('advert', 'active', 'boolean', '25', array(
             ));
    }

    public function down()
    {
        $this->removeColumn('advert', 'active');
    }
}
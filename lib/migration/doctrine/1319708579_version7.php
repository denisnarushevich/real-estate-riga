<?php
/**
 * This class has been auto-generated by the Doctrine ORM Framework
 */
class Version7 extends Doctrine_Migration_Base
{
    public function up()
    {
        $this->addColumn('listing', 'num_views', 'integer', '8', array(
             'default' => '0',
             ));
    }

    public function down()
    {
        $this->removeColumn('listing', 'num_views');
    }
}
<?php
/**
 * This class has been auto-generated by the Doctrine ORM Framework
 */
class Version1 extends Doctrine_Migration_Base
{
    public function up()
    {
        $this->changeColumn('listing', 'price', 'float', '', array(
             'notnull' => '1',
             ));
    }

    public function down()
    {

    }
}
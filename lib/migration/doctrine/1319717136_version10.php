<?php
/**
 * This class has been auto-generated by the Doctrine ORM Framework
 */
class Version10 extends Doctrine_Migration_Base
{
    public function up()
    {
        $this->changeColumn('listing', 'is_house', 'boolean', '25', array(
             'default' => '0',
             ));
    }

    public function down()
    {

    }
}
<?php
/**
 * This class has been auto-generated by the Doctrine ORM Framework
 */
class Version16 extends Doctrine_Migration_Base
{
    public function up()
    {
        $this->changeColumn('listing', 'main_photo', 'string', '', array(
             'notnull' => '1',
             ));
    }

    public function down()
    {

    }
}
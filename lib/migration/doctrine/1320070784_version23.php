<?php
/**
 * This class has been auto-generated by the Doctrine ORM Framework
 */
class Version23 extends Doctrine_Migration_Base
{
    public function up()
    {
        $this->changeColumn('messages', 'name', 'string', '', array(
             'notnull' => '1',
             ));
    }

    public function down()
    {

    }
}
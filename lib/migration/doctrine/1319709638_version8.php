<?php
/**
 * This class has been auto-generated by the Doctrine ORM Framework
 */
class Version8 extends Doctrine_Migration_Base
{
    public function up()
    {
        $this->addColumn('listing', 'google_map_place', 'string', '', array(
             ));
    }

    public function down()
    {
        $this->removeColumn('listing', 'google_map_place');
    }
}
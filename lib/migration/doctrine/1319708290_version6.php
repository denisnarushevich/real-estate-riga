<?php
/**
 * This class has been auto-generated by the Doctrine ORM Framework
 */
class Version6 extends Doctrine_Migration_Base
{
    public function up()
    {
        $this->removeColumn('listing', 'property_type');
        $this->addColumn('listing', 'is_house', 'boolean', '25', array(
             ));
    }

    public function down()
    {
        $this->addColumn('listing', 'property_type', 'enum', '', array(
             'values' => 
             array(
              0 => 'house',
              1 => 'appartment',
             ),
             ));
        $this->removeColumn('listing', 'is_house');
    }
}
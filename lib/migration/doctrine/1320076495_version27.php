<?php
/**
 * This class has been auto-generated by the Doctrine ORM Framework
 */
class Version27 extends Doctrine_Migration_Base
{
    public function up()
    {
        $this->createTable('slider_photos', array(
             'id' => 
             array(
              'type' => 'integer',
              'primary' => '1',
              'autoincrement' => '1',
              'length' => '8',
             ),
             'filename' => 
             array(
              'type' => 'string',
              'notnull' => '1',
              'length' => '',
             ),
             ), array(
             'primary' => 
             array(
              0 => 'id',
             ),
             ));
    }

    public function down()
    {
        $this->dropTable('slider_photos');
    }
}
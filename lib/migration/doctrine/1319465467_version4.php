<?php
/**
 * This class has been auto-generated by the Doctrine ORM Framework
 */
class Version4 extends Doctrine_Migration_Base
{
    public function up()
    {
        $this->createTable('listing_translation', array(
             'id' => 
             array(
              'type' => 'integer',
              'length' => '8',
              'primary' => '1',
             ),
             'month_deal' => 
             array(
              'type' => 'boolean',
              'length' => '25',
             ),
             'lang' => 
             array(
              'fixed' => '1',
              'primary' => '1',
              'type' => 'string',
              'length' => '2',
             ),
             ), array(
             'primary' => 
             array(
              0 => 'id',
              1 => 'lang',
             ),
             ));
        $this->createTable('news_translation', array(
             'id' => 
             array(
              'type' => 'integer',
              'length' => '8',
              'primary' => '1',
             ),
             'content' => 
             array(
              'type' => 'string',
              'notnull' => '1',
              'length' => '',
             ),
             'lang' => 
             array(
              'fixed' => '1',
              'primary' => '1',
              'type' => 'string',
              'length' => '2',
             ),
             ), array(
             'primary' => 
             array(
              0 => 'id',
              1 => 'lang',
             ),
             ));
        $this->removeColumn('news', 'content');
        $this->changeColumn('listing', 'property_type', 'enum', '', array(
             'values' => 
             array(
              0 => 'house',
              1 => 'appartment',
             ),
             ));
    }

    public function down()
    {
        $this->dropTable('listing_translation');
        $this->dropTable('news_translation');
        $this->addColumn('news', 'content', 'string', '', array(
             'notnull' => '1',
             ));
    }
}
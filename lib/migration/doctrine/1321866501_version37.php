<?php
/**
 * This class has been auto-generated by the Doctrine ORM Framework
 */
class Version37 extends Doctrine_Migration_Base
{
    public function up()
    {
        $this->createTable('catalogue', array(
             'cat_id' => 
             array(
              'type' => 'integer',
              'primary' => '1',
              'autoincrement' => '1',
              'length' => '8',
             ),
             'name' => 
             array(
              'type' => 'string',
              'length' => '100',
             ),
             'source_lang' => 
             array(
              'type' => 'string',
              'length' => '100',
             ),
             'target_lang' => 
             array(
              'type' => 'string',
              'length' => '100',
             ),
             'date_created' => 
             array(
              'type' => 'integer',
              'length' => '8',
             ),
             'date_modified' => 
             array(
              'type' => 'integer',
              'length' => '8',
             ),
             'author' => 
             array(
              'type' => 'string',
              'length' => '255',
             ),
             ), array(
             'primary' => 
             array(
              0 => 'cat_id',
             ),
             ));
        $this->createTable('trans_unit', array(
             'msg_id' => 
             array(
              'type' => 'integer',
              'primary' => '1',
              'autoincrement' => '1',
              'length' => '8',
             ),
             'cat_id' => 
             array(
              'type' => 'integer',
              'length' => '8',
             ),
             'id' => 
             array(
              'type' => 'string',
              'length' => '255',
             ),
             'source' => 
             array(
              'type' => 'clob',
              'length' => '',
             ),
             'target' => 
             array(
              'type' => 'clob',
              'length' => '',
             ),
             'comments' => 
             array(
              'type' => 'clob',
              'length' => '',
             ),
             'date_added' => 
             array(
              'type' => 'integer',
              'length' => '8',
             ),
             'date_modified' => 
             array(
              'type' => 'integer',
              'length' => '8',
             ),
             'author' => 
             array(
              'type' => 'string',
              'length' => '255',
             ),
             'translated' => 
             array(
              'type' => 'boolean',
              'default' => '0',
              'length' => '25',
             ),
             ), array(
             'primary' => 
             array(
              0 => 'msg_id',
             ),
             ));
    }

    public function down()
    {
        $this->dropTable('catalogue');
        $this->dropTable('trans_unit');
    }
}
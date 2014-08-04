<?php
/**
 * This class has been auto-generated by the Doctrine ORM Framework
 */
class Version26 extends Doctrine_Migration_Base
{
    public function up()
    {
        $this->createForeignKey('text_page_translation', 'text_page_translation_id_text_page_id', array(
             'name' => 'text_page_translation_id_text_page_id',
             'local' => 'id',
             'foreign' => 'id',
             'foreignTable' => 'text_page',
             'onUpdate' => 'CASCADE',
             'onDelete' => 'CASCADE',
             ));
        $this->addIndex('text_page_translation', 'text_page_translation_id', array(
             'fields' => 
             array(
              0 => 'id',
             ),
             ));
    }

    public function down()
    {
        $this->dropForeignKey('text_page_translation', 'text_page_translation_id_text_page_id');
        $this->removeIndex('text_page_translation', 'text_page_translation_id', array(
             'fields' => 
             array(
              0 => 'id',
             ),
             ));
    }
}
<?php
/**
 * This class has been auto-generated by the Doctrine ORM Framework
 */
class Version20 extends Doctrine_Migration_Base
{
    public function up()
    {
        $this->changeColumn('text_pages', 'page_name', 'varchar', '255', array(
             'notnull' => '1',
             ));
    }

    public function down()
    {

    }
}
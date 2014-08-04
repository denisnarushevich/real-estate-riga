<?php

/**
 * BaseSliderPhotos
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $id
 * @property string $filename
 * 
 * @method integer      getId()       Returns the current record's "id" value
 * @method string       getFilename() Returns the current record's "filename" value
 * @method SliderPhotos setId()       Sets the current record's "id" value
 * @method SliderPhotos setFilename() Sets the current record's "filename" value
 * 
 * @package    realestate
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class BaseSliderPhotos extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('slider_photos');
        $this->hasColumn('id', 'integer', null, array(
             'type' => 'integer',
             'primary' => true,
             'autoincrement' => true,
             ));
        $this->hasColumn('filename', 'string', null, array(
             'type' => 'string',
             'notnull' => true,
             ));

        $this->option('type', 'INNODB');
        $this->option('collate', 'utf8_general_ci');
        $this->option('charset', 'utf8');
    }

    public function setUp()
    {
        parent::setUp();
        
    }
}
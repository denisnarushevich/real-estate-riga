<?php

/**
 * BaseAdvertisement
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $id
 * @property string $name
 * @property string $filename
 * @property string $url
 * @property boolean $active
 * 
 * @method integer       getId()       Returns the current record's "id" value
 * @method string        getName()     Returns the current record's "name" value
 * @method string        getFilename() Returns the current record's "filename" value
 * @method string        getUrl()      Returns the current record's "url" value
 * @method boolean       getActive()   Returns the current record's "active" value
 * @method Advertisement setId()       Sets the current record's "id" value
 * @method Advertisement setName()     Sets the current record's "name" value
 * @method Advertisement setFilename() Sets the current record's "filename" value
 * @method Advertisement setUrl()      Sets the current record's "url" value
 * @method Advertisement setActive()   Sets the current record's "active" value
 * 
 * @package    realestate
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class BaseAdvertisement extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('advert');
        $this->hasColumn('id', 'integer', null, array(
             'type' => 'integer',
             'primary' => true,
             'autoincrement' => true,
             ));
        $this->hasColumn('name', 'string', null, array(
             'type' => 'string',
             'notnull' => false,
             ));
        $this->hasColumn('filename', 'string', null, array(
             'type' => 'string',
             'notnull' => true,
             ));
        $this->hasColumn('url', 'string', null, array(
             'type' => 'string',
             'notnull' => true,
             ));
        $this->hasColumn('active', 'boolean', null, array(
             'type' => 'boolean',
             ));

        $this->option('type', 'INNODB');
        $this->option('collate', 'utf8_general_ci');
        $this->option('charset', 'utf8');
    }

    public function setUp()
    {
        parent::setUp();
        $i18n0 = new Doctrine_Template_I18n(array(
             'fields' => 
             array(
              0 => 'active',
             ),
             ));
        $this->actAs($i18n0);
    }
}
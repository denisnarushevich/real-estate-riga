<?php

/**
 * BaseTransUnit
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $msg_id
 * @property integer $cat_id
 * @property string $id
 * @property clob $source
 * @property clob $target
 * @property clob $comments
 * @property integer $date_added
 * @property integer $date_modified
 * @property string $author
 * @property boolean $translated
 * @property Catalogue $Catalogue
 * 
 * @method integer   getMsgId()         Returns the current record's "msg_id" value
 * @method integer   getCatId()         Returns the current record's "cat_id" value
 * @method string    getId()            Returns the current record's "id" value
 * @method clob      getSource()        Returns the current record's "source" value
 * @method clob      getTarget()        Returns the current record's "target" value
 * @method clob      getComments()      Returns the current record's "comments" value
 * @method integer   getDateAdded()     Returns the current record's "date_added" value
 * @method integer   getDateModified()  Returns the current record's "date_modified" value
 * @method string    getAuthor()        Returns the current record's "author" value
 * @method boolean   getTranslated()    Returns the current record's "translated" value
 * @method Catalogue getCatalogue()     Returns the current record's "Catalogue" value
 * @method TransUnit setMsgId()         Sets the current record's "msg_id" value
 * @method TransUnit setCatId()         Sets the current record's "cat_id" value
 * @method TransUnit setId()            Sets the current record's "id" value
 * @method TransUnit setSource()        Sets the current record's "source" value
 * @method TransUnit setTarget()        Sets the current record's "target" value
 * @method TransUnit setComments()      Sets the current record's "comments" value
 * @method TransUnit setDateAdded()     Sets the current record's "date_added" value
 * @method TransUnit setDateModified()  Sets the current record's "date_modified" value
 * @method TransUnit setAuthor()        Sets the current record's "author" value
 * @method TransUnit setTranslated()    Sets the current record's "translated" value
 * @method TransUnit setCatalogue()     Sets the current record's "Catalogue" value
 * 
 * @package    realestate
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class BaseTransUnit extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('trans_unit');
        $this->hasColumn('msg_id', 'integer', null, array(
             'type' => 'integer',
             'primary' => true,
             'autoincrement' => true,
             ));
        $this->hasColumn('cat_id', 'integer', null, array(
             'type' => 'integer',
             ));
        $this->hasColumn('id', 'string', 255, array(
             'type' => 'string',
             'length' => 255,
             ));
        $this->hasColumn('source', 'clob', null, array(
             'type' => 'clob',
             ));
        $this->hasColumn('target', 'clob', null, array(
             'type' => 'clob',
             ));
        $this->hasColumn('comments', 'clob', null, array(
             'type' => 'clob',
             ));
        $this->hasColumn('date_added', 'integer', null, array(
             'type' => 'integer',
             ));
        $this->hasColumn('date_modified', 'integer', null, array(
             'type' => 'integer',
             ));
        $this->hasColumn('author', 'string', 255, array(
             'type' => 'string',
             'length' => 255,
             ));
        $this->hasColumn('translated', 'boolean', null, array(
             'type' => 'boolean',
             'default' => 0,
             ));

        $this->option('type', 'INNODB');
        $this->option('collate', 'utf8_general_ci');
        $this->option('charset', 'utf8');
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasOne('Catalogue', array(
             'local' => 'cat_id',
             'foreign' => 'cat_id'));
    }
}
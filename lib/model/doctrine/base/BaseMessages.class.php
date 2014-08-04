<?php

/**
 * BaseMessages
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $id
 * @property integer $reply_to
 * @property integer $listing_id
 * @property varchar $name
 * @property varchar $company
 * @property string $message
 * @property string $contact
 * @property Messages $Messages
 * @property Listing $Listing
 * 
 * @method integer  getId()         Returns the current record's "id" value
 * @method integer  getReplyTo()    Returns the current record's "reply_to" value
 * @method integer  getListingId()  Returns the current record's "listing_id" value
 * @method varchar  getName()       Returns the current record's "name" value
 * @method varchar  getCompany()    Returns the current record's "company" value
 * @method string   getMessage()    Returns the current record's "message" value
 * @method string   getContact()    Returns the current record's "contact" value
 * @method Messages getMessages()   Returns the current record's "Messages" value
 * @method Listing  getListing()    Returns the current record's "Listing" value
 * @method Messages setId()         Sets the current record's "id" value
 * @method Messages setReplyTo()    Sets the current record's "reply_to" value
 * @method Messages setListingId()  Sets the current record's "listing_id" value
 * @method Messages setName()       Sets the current record's "name" value
 * @method Messages setCompany()    Sets the current record's "company" value
 * @method Messages setMessage()    Sets the current record's "message" value
 * @method Messages setContact()    Sets the current record's "contact" value
 * @method Messages setMessages()   Sets the current record's "Messages" value
 * @method Messages setListing()    Sets the current record's "Listing" value
 * 
 * @package    realestate
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class BaseMessages extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('messages');
        $this->hasColumn('id', 'integer', null, array(
             'type' => 'integer',
             'primary' => true,
             'autoincrement' => true,
             ));
        $this->hasColumn('reply_to', 'integer', null, array(
             'type' => 'integer',
             'notnull' => false,
             ));
        $this->hasColumn('listing_id', 'integer', null, array(
             'type' => 'integer',
             'notnull' => false,
             ));
        $this->hasColumn('name', 'varchar', 255, array(
             'type' => 'varchar',
             'notnull' => true,
             'length' => 255,
             ));
        $this->hasColumn('company', 'varchar', 255, array(
             'type' => 'varchar',
             'notnull' => false,
             'length' => 255,
             ));
        $this->hasColumn('message', 'string', null, array(
             'type' => 'string',
             'notnull' => true,
             ));
        $this->hasColumn('contact', 'string', null, array(
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
        $this->hasOne('Messages', array(
             'local' => 'reply_to',
             'foreign' => 'id',
             'onDelete' => 'cascade'));

        $this->hasOne('Listing', array(
             'local' => 'listing_id',
             'foreign' => 'id',
             'onDelete' => 'cascade'));
    }
}
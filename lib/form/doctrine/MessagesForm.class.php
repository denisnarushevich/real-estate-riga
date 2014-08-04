<?php

/**
 * Messages form.
 *
 * @package    realestate
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class MessagesForm extends BaseMessagesForm
{
  public function configure()
  {
	unset($this['reply_to']);
	$this->setWidget('listing_id', new sfWidgetFormInput(array(),array('disabled'=>'true')));
	$this->setWidget('name', new sfWidgetFormInput(array(),array('disabled'=>'true')));
	$this->setWidget('message', new sfWidgetFormTextarea(array(),array('disabled'=>'true')));
	$this->setWidget('contact', new sfWidgetFormInput(array(),array('disabled'=>'true')));
	$this->setWidget('company', new sfWidgetFormInput(array(),array('disabled'=>'true')));
	/*
    $this->setWidgets(array(
      'id'         => new sfWidgetFormInputHidden(),
      'reply_to'   => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Messages'), 'add_empty' => true)),
      'listing_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Listing'), 'add_empty' => true)),
      'name'       => new sfWidgetFormInputText(),
      'message'    => new sfWidgetFormTextarea(),
      'contact'    => new sfWidgetFormTextarea(),
    ));

    $this->setValidators(array(
      'id'         => new sfValidatorChoice(array('choices' => array($this->getObject()->get('id')), 'empty_value' => $this->getObject()->get('id'), 'required' => false)),
      'reply_to'   => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Messages'), 'required' => false)),
      'listing_id' => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Listing'), 'required' => false)),
      'name'       => new sfValidatorPass(),
      'message'    => new sfValidatorString(),
      'contact'    => new sfValidatorString(),
    ));*/
  }
}

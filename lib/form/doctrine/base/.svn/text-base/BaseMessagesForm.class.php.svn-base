<?php

/**
 * Messages form base class.
 *
 * @method Messages getObject() Returns the current form's model object
 *
 * @package    realestate
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
 */
abstract class BaseMessagesForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'         => new sfWidgetFormInputHidden(),
      'reply_to'   => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Messages'), 'add_empty' => true)),
      'listing_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Listing'), 'add_empty' => true)),
      'name'       => new sfWidgetFormInputText(),
      'company'    => new sfWidgetFormInputText(),
      'message'    => new sfWidgetFormTextarea(),
      'contact'    => new sfWidgetFormTextarea(),
    ));

    $this->setValidators(array(
      'id'         => new sfValidatorChoice(array('choices' => array($this->getObject()->get('id')), 'empty_value' => $this->getObject()->get('id'), 'required' => false)),
      'reply_to'   => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Messages'), 'required' => false)),
      'listing_id' => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Listing'), 'required' => false)),
      'name'       => new sfValidatorPass(),
      'company'    => new sfValidatorPass(array('required' => false)),
      'message'    => new sfValidatorString(),
      'contact'    => new sfValidatorString(),
    ));

    $this->widgetSchema->setNameFormat('messages[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Messages';
  }

}

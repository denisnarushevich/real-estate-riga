<?php

/**
 * Messages filter form base class.
 *
 * @package    realestate
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 29570 2010-05-21 14:49:47Z Kris.Wallsmith $
 */
abstract class BaseMessagesFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'reply_to'   => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Messages'), 'add_empty' => true)),
      'listing_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Listing'), 'add_empty' => true)),
      'name'       => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'company'    => new sfWidgetFormFilterInput(),
      'message'    => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'contact'    => new sfWidgetFormFilterInput(array('with_empty' => false)),
    ));

    $this->setValidators(array(
      'reply_to'   => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('Messages'), 'column' => 'id')),
      'listing_id' => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('Listing'), 'column' => 'id')),
      'name'       => new sfValidatorPass(array('required' => false)),
      'company'    => new sfValidatorPass(array('required' => false)),
      'message'    => new sfValidatorPass(array('required' => false)),
      'contact'    => new sfValidatorPass(array('required' => false)),
    ));

    $this->widgetSchema->setNameFormat('messages_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Messages';
  }

  public function getFields()
  {
    return array(
      'id'         => 'Number',
      'reply_to'   => 'ForeignKey',
      'listing_id' => 'ForeignKey',
      'name'       => 'Text',
      'company'    => 'Text',
      'message'    => 'Text',
      'contact'    => 'Text',
    );
  }
}

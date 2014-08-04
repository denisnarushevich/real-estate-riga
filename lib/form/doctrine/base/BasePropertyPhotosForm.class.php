<?php

/**
 * PropertyPhotos form base class.
 *
 * @method PropertyPhotos getObject() Returns the current form's model object
 *
 * @package    realestate
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
 */
abstract class BasePropertyPhotosForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'         => new sfWidgetFormInputHidden(),
      'listing_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Listing'), 'add_empty' => false)),
      'filename'   => new sfWidgetFormTextarea(),
    ));

    $this->setValidators(array(
      'id'         => new sfValidatorChoice(array('choices' => array($this->getObject()->get('id')), 'empty_value' => $this->getObject()->get('id'), 'required' => false)),
      'listing_id' => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Listing'))),
      'filename'   => new sfValidatorString(),
    ));

    $this->widgetSchema->setNameFormat('property_photos[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'PropertyPhotos';
  }

}

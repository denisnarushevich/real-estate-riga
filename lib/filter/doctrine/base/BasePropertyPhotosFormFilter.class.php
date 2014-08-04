<?php

/**
 * PropertyPhotos filter form base class.
 *
 * @package    realestate
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 29570 2010-05-21 14:49:47Z Kris.Wallsmith $
 */
abstract class BasePropertyPhotosFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'listing_id' => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Listing'), 'add_empty' => true)),
      'filename'   => new sfWidgetFormFilterInput(array('with_empty' => false)),
    ));

    $this->setValidators(array(
      'listing_id' => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('Listing'), 'column' => 'id')),
      'filename'   => new sfValidatorPass(array('required' => false)),
    ));

    $this->widgetSchema->setNameFormat('property_photos_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'PropertyPhotos';
  }

  public function getFields()
  {
    return array(
      'id'         => 'Number',
      'listing_id' => 'ForeignKey',
      'filename'   => 'Text',
    );
  }
}

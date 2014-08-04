<?php

/**
 * SliderPhotos filter form base class.
 *
 * @package    realestate
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 29570 2010-05-21 14:49:47Z Kris.Wallsmith $
 */
abstract class BaseSliderPhotosFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'filename' => new sfWidgetFormFilterInput(array('with_empty' => false)),
    ));

    $this->setValidators(array(
      'filename' => new sfValidatorPass(array('required' => false)),
    ));

    $this->widgetSchema->setNameFormat('slider_photos_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'SliderPhotos';
  }

  public function getFields()
  {
    return array(
      'id'       => 'Number',
      'filename' => 'Text',
    );
  }
}

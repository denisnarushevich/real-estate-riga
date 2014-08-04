<?php

/**
 * Listing form base class.
 *
 * @method Listing getObject() Returns the current form's model object
 *
 * @package    realestate
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormGeneratedTemplate.php 29553 2010-05-20 14:33:00Z Kris.Wallsmith $
 */
abstract class BaseListingForm extends BaseFormDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'id'                  => new sfWidgetFormInputHidden(),
      'price'               => new sfWidgetFormInputText(),
      'city_id'             => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('City'), 'add_empty' => false)),
      'location_id'         => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Location'), 'add_empty' => false)),
      'street'              => new sfWidgetFormTextarea(),
      'is_house'            => new sfWidgetFormInputCheckbox(),
      'area'                => new sfWidgetFormInputText(),
      'land_area'           => new sfWidgetFormInputText(),
      'rooms'               => new sfWidgetFormInputText(),
      'floors'              => new sfWidgetFormInputText(),
      'floor'               => new sfWidgetFormInputText(),
      'is_renovated'        => new sfWidgetFormInputCheckbox(),
      'is_furnished'        => new sfWidgetFormInputCheckbox(),
      'for_rent'            => new sfWidgetFormInputCheckbox(),
      'is_active'           => new sfWidgetFormInputCheckbox(),
      'has_videos'          => new sfWidgetFormInputCheckbox(),
      'num_views'           => new sfWidgetFormInputText(),
      'google_map_location' => new sfWidgetFormTextarea(),
      'main_photo'          => new sfWidgetFormTextarea(),
      'created_at'          => new sfWidgetFormDateTime(),
      'updated_at'          => new sfWidgetFormDateTime(),
    ));

    $this->setValidators(array(
      'id'                  => new sfValidatorChoice(array('choices' => array($this->getObject()->get('id')), 'empty_value' => $this->getObject()->get('id'), 'required' => false)),
      'price'               => new sfValidatorNumber(),
      'city_id'             => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('City'))),
      'location_id'         => new sfValidatorDoctrineChoice(array('model' => $this->getRelatedModelName('Location'))),
      'street'              => new sfValidatorString(),
      'is_house'            => new sfValidatorBoolean(array('required' => false)),
      'area'                => new sfValidatorInteger(),
      'land_area'           => new sfValidatorInteger(),
      'rooms'               => new sfValidatorInteger(),
      'floors'              => new sfValidatorInteger(),
      'floor'               => new sfValidatorInteger(array('required' => false)),
      'is_renovated'        => new sfValidatorBoolean(array('required' => false)),
      'is_furnished'        => new sfValidatorBoolean(array('required' => false)),
      'for_rent'            => new sfValidatorBoolean(array('required' => false)),
      'is_active'           => new sfValidatorBoolean(array('required' => false)),
      'has_videos'          => new sfValidatorBoolean(array('required' => false)),
      'num_views'           => new sfValidatorInteger(array('required' => false)),
      'google_map_location' => new sfValidatorString(array('required' => false)),
      'main_photo'          => new sfValidatorString(array('required' => false)),
      'created_at'          => new sfValidatorDateTime(),
      'updated_at'          => new sfValidatorDateTime(),
    ));

    $this->widgetSchema->setNameFormat('listing[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Listing';
  }

}

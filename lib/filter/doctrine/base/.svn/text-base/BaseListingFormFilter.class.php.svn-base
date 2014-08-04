<?php

/**
 * Listing filter form base class.
 *
 * @package    realestate
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormFilterGeneratedTemplate.php 29570 2010-05-21 14:49:47Z Kris.Wallsmith $
 */
abstract class BaseListingFormFilter extends BaseFormFilterDoctrine
{
  public function setup()
  {
    $this->setWidgets(array(
      'price'               => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'city_id'             => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('City'), 'add_empty' => true)),
      'location_id'         => new sfWidgetFormDoctrineChoice(array('model' => $this->getRelatedModelName('Location'), 'add_empty' => true)),
      'street'              => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'is_house'            => new sfWidgetFormChoice(array('choices' => array('' => 'yes or no', 1 => 'yes', 0 => 'no'))),
      'area'                => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'land_area'           => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'rooms'               => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'floors'              => new sfWidgetFormFilterInput(array('with_empty' => false)),
      'floor'               => new sfWidgetFormFilterInput(),
      'is_renovated'        => new sfWidgetFormChoice(array('choices' => array('' => 'yes or no', 1 => 'yes', 0 => 'no'))),
      'is_furnished'        => new sfWidgetFormChoice(array('choices' => array('' => 'yes or no', 1 => 'yes', 0 => 'no'))),
      'for_rent'            => new sfWidgetFormChoice(array('choices' => array('' => 'yes or no', 1 => 'yes', 0 => 'no'))),
      'is_active'           => new sfWidgetFormChoice(array('choices' => array('' => 'yes or no', 1 => 'yes', 0 => 'no'))),
      'has_videos'          => new sfWidgetFormChoice(array('choices' => array('' => 'yes or no', 1 => 'yes', 0 => 'no'))),
      'num_views'           => new sfWidgetFormFilterInput(),
      'google_map_location' => new sfWidgetFormFilterInput(),
      'main_photo'          => new sfWidgetFormFilterInput(),
      'created_at'          => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate(), 'with_empty' => false)),
      'updated_at'          => new sfWidgetFormFilterDate(array('from_date' => new sfWidgetFormDate(), 'to_date' => new sfWidgetFormDate(), 'with_empty' => false)),
    ));

    $this->setValidators(array(
      'price'               => new sfValidatorSchemaFilter('text', new sfValidatorNumber(array('required' => false))),
      'city_id'             => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('City'), 'column' => 'id')),
      'location_id'         => new sfValidatorDoctrineChoice(array('required' => false, 'model' => $this->getRelatedModelName('Location'), 'column' => 'id')),
      'street'              => new sfValidatorPass(array('required' => false)),
      'is_house'            => new sfValidatorChoice(array('required' => false, 'choices' => array('', 1, 0))),
      'area'                => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'land_area'           => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'rooms'               => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'floors'              => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'floor'               => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'is_renovated'        => new sfValidatorChoice(array('required' => false, 'choices' => array('', 1, 0))),
      'is_furnished'        => new sfValidatorChoice(array('required' => false, 'choices' => array('', 1, 0))),
      'for_rent'            => new sfValidatorChoice(array('required' => false, 'choices' => array('', 1, 0))),
      'is_active'           => new sfValidatorChoice(array('required' => false, 'choices' => array('', 1, 0))),
      'has_videos'          => new sfValidatorChoice(array('required' => false, 'choices' => array('', 1, 0))),
      'num_views'           => new sfValidatorSchemaFilter('text', new sfValidatorInteger(array('required' => false))),
      'google_map_location' => new sfValidatorPass(array('required' => false)),
      'main_photo'          => new sfValidatorPass(array('required' => false)),
      'created_at'          => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 00:00:00')), 'to_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 23:59:59')))),
      'updated_at'          => new sfValidatorDateRange(array('required' => false, 'from_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 00:00:00')), 'to_date' => new sfValidatorDateTime(array('required' => false, 'datetime_output' => 'Y-m-d 23:59:59')))),
    ));

    $this->widgetSchema->setNameFormat('listing_filters[%s]');

    $this->errorSchema = new sfValidatorErrorSchema($this->validatorSchema);

    $this->setupInheritance();

    parent::setup();
  }

  public function getModelName()
  {
    return 'Listing';
  }

  public function getFields()
  {
    return array(
      'id'                  => 'Number',
      'price'               => 'Number',
      'city_id'             => 'ForeignKey',
      'location_id'         => 'ForeignKey',
      'street'              => 'Text',
      'is_house'            => 'Boolean',
      'area'                => 'Number',
      'land_area'           => 'Number',
      'rooms'               => 'Number',
      'floors'              => 'Number',
      'floor'               => 'Number',
      'is_renovated'        => 'Boolean',
      'is_furnished'        => 'Boolean',
      'for_rent'            => 'Boolean',
      'is_active'           => 'Boolean',
      'has_videos'          => 'Boolean',
      'num_views'           => 'Number',
      'google_map_location' => 'Text',
      'main_photo'          => 'Text',
      'created_at'          => 'Date',
      'updated_at'          => 'Date',
    );
  }
}

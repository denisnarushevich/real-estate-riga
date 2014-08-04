<?php

/**
 * Listing form.
 *
 * @package    realestate
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class ListingForm extends BaseListingForm
{
  public function configure()
  {
	unset(
		$this['created_at'], $this['updated_at']
	);
		
	$this->embedI18n(array('lv', 'ru', 'en'));

	$this->setWidget('city_id', new sfWidgetFormChoice(array('choices' => city::getCitiesList('en'))));
	$this->setWidget('location_id', new sfWidgetFormChoice(array('choices' => location::getDistrictsList('en'))));
	$this->setWidget('street', new sfWidgetFormInput());
	$this->setWidget('google_map_location', new sfWidgetFormInputGmap());
	
	
	if($this->getObject()->get('main_photo')){
         $is_image = true;
         $src = '/photos/property/original/'.$this->getObject()->get('main_photo');
     }else{
         $is_image = false;
         $src = 'none';
     }
	
	$this->setWidget('main_photo', new sfWidgetFormInputFileEditable(array(
		'file_src' => $src,
		'is_image' => $is_image,
		'edit_mode' => true,
		'with_delete' => true,
		'delete_label' => 'remove'
	), array('width'=>'480')));
	
	$this->setValidator('main_photo', new sfValidatorFile(array(
	  'max_size' => 500000000,
	  'mime_types' => 'web_images',
	  'path' => './photos/property/original/',
	  'required' => false,
	  'validated_file_class' => 'sfValidatedFileThumbGen',
	)));
	$this->setValidator('main_photo_delete', new sfValidatorPass());
	
	
	
	
	
	$this->widgetSchema->setLabel('lv', 'Latvian');
	$this->widgetSchema->setLabel('ru', 'Russian');
	$this->widgetSchema->setLabel('en', 'English');
	$this->widgetSchema['lv']['description'] = new sfWidgetFormTextareaTinyMCE(
		array('width' => 640, 'height' => 300));

	$this->widgetSchema['ru']['description'] = new sfWidgetFormTextareaTinyMCE(
		array('width' => 640, 'height' => 300));

	$this->widgetSchema['en']['description'] = new sfWidgetFormTextareaTinyMCE(
		array('width' => 640, 'height' => 300));	
	
	
	
	
	
	
	$adForm = new sfForm();
	$adPhotos = Doctrine_Query::create()
			->from('propertyPhotos')
			->where('listing_id = ? and filename<>\'\'', $this->getObject()->getId())
			->execute();
	
	foreach($adPhotos as $key => $adPhoto){
		$adForm->embedForm($key+1, new PropertyPhotosForm($adPhoto));
	}
	$pp = new PropertyPhotos();
	$pp->setListingId($this->getObject()->getId());
	$adForm->embedForm('New photo', new PropertyPhotosForm($pp));
	$this->embedForm('Additional photos', $adForm);
  }
  
 	function doSave($con = null) {
		if(!is_object($this->values['Additional photos']['New photo']['filename'])){
			if(!strlen($this->values['Additional photos']['New photo']['filename']['name']) > 0){
				unset($this->embeddedForms['Additional photos']['New photo']);
			}
		}
		parent::doSave($con);
	}

}

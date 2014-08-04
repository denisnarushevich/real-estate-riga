<?php

/**
 * Advertisement form.
 *
 * @package    realestate
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class AdvertisementForm extends BaseAdvertisementForm
{
  public function configure()
  {
	$this->embedI18n(array('lv', 'ru', 'en'));
	
	$this->setWidget('name', new sfWidgetFormInput());
	$this->setWidget('url', new sfWidgetFormInput());
	
	$this->widgetSchema->setLabel('lv', 'Latvian');
	$this->widgetSchema->setLabel('ru', 'Russian');
	$this->widgetSchema->setLabel('en', 'English');

	if($this->getObject()->get('filename')){
         $is_image = true;
         $src = '/uploads/ads/original/'.$this->getObject()->get('filename');
     }else{
         $is_image = false;
         $src = 'none';
     }
	
	$this->setWidget('filename', new sfWidgetFormInputFileEditable(array(
		'file_src' => $src,
		'is_image' => $is_image,
		'edit_mode' => true,
		'with_delete' => true,
		'delete_label' => 'remove'
	), array('width'=>'200')));
	
	$this->setValidator('filename', new sfValidatorFile(array(
	  'max_size' => 500000000,
	  'mime_types' => 'web_images',
	  'path' => './uploads/ads/original/',
	  'required' => false,
	  'validated_file_class' => 'sfValidatedFileAdThumbGen',
	)));
	$this->setValidator('filename_delete', new sfValidatorPass());

  }
}

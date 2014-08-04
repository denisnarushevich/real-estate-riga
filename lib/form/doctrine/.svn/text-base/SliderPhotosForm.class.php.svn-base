<?php

/**
 * SliderPhotos form.
 *
 * @package    realestate
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class SliderPhotosForm extends BaseSliderPhotosForm
{
  public function configure()
  {
		if($this->getObject()->get('filename')){
			 $is_image = true;
			 $src = '/photos/slider/original/'.$this->getObject()->get('filename');
		 }else{
			 $is_image = false;
			 $src = 'none';
		 }

		$this->setWidget('filename', new sfWidgetFormInputFileEditable(array(
			'file_src' => $src,
			'is_image' => $is_image,
			'edit_mode' => $is_image,
			'with_delete' => true,
			'delete_label' => 'remove'
		), array('width'=>'480','value'=>$this->getObject()->get('filename'))));

		$this->setValidator('filename', new sfValidatorFile(array(
		  'required' => false,
		  'max_size' => 500000000,
		  'mime_types' => 'web_images',
		  'path' => './photos/slider/original/',
		  'validated_file_class' => 'sfValidatedFileSliderThumbGen',
		)));
		$this->setValidator('filename_delete', new sfValidatorPass());
  }
}

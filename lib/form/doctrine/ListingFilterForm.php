<?php

/**
 * Listing form.
 *
 * @package    realestate
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class ListingFilterForm extends sfForm
{
	public function configure()
	{		
		$this->setWidgets(array(
			'city' => new sfWidgetFormSelect(array(
					'choices' => array()
				)),
			'district' => new sfWidgetFormSelect(array(
					'choices' => array()
				)),
			'rooms_from' => new sfWidgetFormInput(),
			'rooms_to' => new sfWidgetFormInput(),
			'price_from' => new sfWidgetFormInput(),
			'price_to' => new sfWidgetFormInput(),
			'area_from' => new sfWidgetFormInput(),
			'area_to' => new sfWidgetFormInput(),
			'has_photos' => new sfWidgetFormInputCheckbox(),
			'has_videos' => new sfWidgetFormInputCheckbox(),
			'is_on_map' => new sfWidgetFormInputCheckbox(),
		));

		$this->setValidators(array(
			'city' => new sfValidatorPass(),
			'district' => new sfValidatorPass(),
			'rooms_from' => new sfValidatorPass(),
			'rooms_to' => new sfValidatorPass(),
			'price_from' => new sfValidatorPass(),
			'price_to' => new sfValidatorPass(),
			'area_from' => new sfValidatorPass(),
			'area_to' => new sfValidatorPass(),
			'with_photo' => new sfValidatorPass(),
			'with_video' => new sfValidatorPass(),
			'is_on_map' => new sfValidatorPass(),
		));
		
		$this->getWidgetSchema()->setNameFormat('filterForm[%s]');
		$this->disableCSRFProtection();
	}
}

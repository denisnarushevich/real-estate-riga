<?php

/**
 * News form.
 *
 * @package    realestate
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class NewsForm extends BaseNewsForm
{
  public function configure()
  {
		unset(
		  $this['created_at'], $this['updated_at']
		);  
	
		$this->embedI18n(array('lv', 'ru', 'en'));
		$this->widgetSchema->setLabel('lv', 'Latvian');
		$this->widgetSchema->setLabel('ru', 'Russian');
		$this->widgetSchema->setLabel('en', 'English');
		
		$this->widgetSchema['lv']['content'] = new sfWidgetFormTextareaTinyMCE(
			array('width' => 800, 'height' => 300));
		
		$this->widgetSchema['ru']['content'] = new sfWidgetFormTextareaTinyMCE(
			array('width' => 800, 'height' => 300));
				
		$this->widgetSchema['en']['content'] = new sfWidgetFormTextareaTinyMCE(
			array('width' => 800, 'height' => 300));
  }
}

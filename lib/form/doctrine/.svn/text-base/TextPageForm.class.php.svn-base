<?php

/**
 * TextPage form.
 *
 * @package    realestate
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class TextPageForm extends BaseTextPageForm
{
  public function configure()
  {
	unset($this['page_name']);
	  $this->embedI18n(array('lv', 'ru', 'en'));
  
	$this->widgetSchema->setLabel('lv', 'Latvian');
	$this->widgetSchema->setLabel('ru', 'Russian');
	$this->widgetSchema->setLabel('en', 'English');
	$this->widgetSchema['lv']['content'] = new sfWidgetFormTextareaTinyMCE(
		array('width' => 640, 'height' => 300));

	$this->widgetSchema['ru']['content'] = new sfWidgetFormTextareaTinyMCE(
		array('width' => 640, 'height' => 300));

	$this->widgetSchema['en']['content'] = new sfWidgetFormTextareaTinyMCE(
		array('width' => 640, 'height' => 300));
  }
}

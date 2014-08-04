<?php

/**
 * contacts actions.
 *
 * @package    realestate
 * @subpackage contacts
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class contactsActions extends sfActions
{
 /**
  * Executes index action
  *
  * @param sfRequest $request A request object
  */
  public function executeIndex(sfWebRequest $request)
  {
	$content = Doctrine_Query::create()
			->from('TextPage')
			->where('page_name = "contacts"')
			->execute();
	
	$this->content = $content[0]->getContent();
	$this->lng = sfConfig::get("sf_real_estate_latvia_office_lng");
	$this->lat = sfConfig::get("sf_real_estate_latvia_office_lat");
	
	
	
	//contact form 2
	$form = new sfForm();
	$form->setWidgets(array(
		'name'=>new sfWidgetFormInput(array(
			'label'=>'Your name:',
		)),
		'company'=>new sfWidgetFormInput(array(
			'label'=>'Company:',
		)),
		'mail'=>new sfWidgetFormInput(array(
			'label'=>'E-mail:',
		)),
		'message'=>new sfWidgetFormTextarea(array(
			'label'=>'Message:',
		)),
	));
	$form->setValidators(array(
		'name'=>new sfValidatorPass(),
		'company'=>new sfValidatorPass(),
		'mail'=>new sfValidatorPass(),
		'message'=>new sfValidatorPass(),
	));
	$form->getWidgetSchema()->setNameFormat('contactForm2[%s]');
	$form->disableCSRFProtection();
	//process form data, if got some
	if($r = $request->getParameter('contactForm2')){
		//var_dump($request->getParameter('contactForm2'));
		//todo send message to admin email
		$m = new Messages();
		$m->setMessage($r['message']);
		$m->setCompany($r['company']);
		$m->setContact($r['mail']);
		$m->setName($r['name']);
		
		$m->save();
		
		$this->saved = true;
		
		$form->bind($r);
	}else{
		$this->saved = false;
	}
	
	$this->contactForm2 = $form;
  }
}

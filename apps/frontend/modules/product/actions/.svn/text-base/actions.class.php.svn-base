<?php

/**
 * product actions.
 *
 * @package    realestate
 * @subpackage product
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class productActions extends sfActions
{
 /**
  * Executes index action
  *
  * @param sfRequest $request A request object
  */
  public function executeIndex(sfWebRequest $request)
  {
    $id = $request->getParameter('id');
	
	//getin' products
	$product = Doctrine_Core::getTable('listing')
			->findOneBy('id', $id);
	
	//gettin' list of ad items on the right column
	// *we need to show listing items of same type ( rent/house/flat) and in the same city. 3 items.
	// and if no items in the same city, then just show items of same type
	$adItems = Doctrine_Query::create()->from('listing');
	if($product->getForRent()){
		$adItems = $adItems->andWhere('for_rent and city_id = ? and id <> ?', array($product->getCityId(), $id));
	}else{
		if($product->getIsHouse()){
			$adItems = $adItems->andWhere('is_house and not for_rent and city_id = ? and id <> ?', array($product->getCityId(), $id));
		}else{
			$adItems = $adItems->andWhere('not is_house and not for_rent and city_id = ? and id <> ?', array($product->getCityId(), $id));
		}
	}
	$adItems = $adItems->limit(3)->execute();
	//realisation of "if no items in the same city...."
	if( !sizeof($adItems) ){
		$adItems = Doctrine_Query::create()->from('listing');
		if($product->getForRent()){
			$adItems = $adItems->andWhere('for_rent and id <> ?', $id);
		}else{
			if($product->getIsHouse()){
				$adItems = $adItems->andWhere('is_house and not for_rent and and id <> ?', $id);
			}else{
				$adItems = $adItems->andWhere('not is_house and not for_rent and id <> ?', $id);
			}
		}
		$adItems = $adItems->limit(3)->execute();
	}
	
	
	
	//increasing number of visits
	$product->setNumViews($product->getNumViews()+1);
	$product->save();
	
	//getting referer and setting caption text
	$this->refererUrl = $request->getReferer();
	if($product->getForRent()){
		$referer = 'rent';
	}else{
		if($product->getIsHouse()){
			$referer = 'houses';
		}else{
			$referer = 'appartments';
		}
	}
	$this->referer = $referer;
	// and setting user attr of current categ (is used to highlight current category menu button)
	$this->getUser()->setAttribute('currentMenuItem', $referer);
	
	//thumbnail photos
	$photos = Doctrine_Query::create()
			->from('propertyPhotos')
			->where('listing_id = ? and filename<>\'\'', $id)
			->execute();
	
	
	//contactform
	$form = new sfForm();
	$form->setWidgets(array(
		'name'=>new sfWidgetFormInput(array(
			'label'=>'Your name:',
		)),
		'mailOrPhone'=>new sfWidgetFormInput(array(
			'label'=>'E-mail or phone number:',
		)),
		'message'=>new sfWidgetFormTextarea(array(
			'label'=>'Message',
		)),
		'aboutProduct'=>new sfWidgetFormInputCheckbox(array(
			'label'=>'Contact about this classified',
		))
	));
	$form->setValidators(array(
		'name'=>new sfValidatorPass(),
		'mailOrPhone'=>new sfValidatorPass(),
		'message'=>new sfValidatorPass(),
		'aboutProduct'=>new sfValidatorPass(),
	));
	$form->getWidgetSchema()->setNameFormat('contactForm[%s]');
	$form->disableCSRFProtection();
	//process form data, if got some
	if($r = $request->getParameter('contactForm')){
		$m = new Messages();
		$m->setMessage($r['message']);
		$m->setName($r['name']);
		$m->setContact($r['mailOrPhone']);
	    if($r['aboutProduct']){
			$m->setListingId($product->getId());
		}
		$m->save();
		
		$this->saved = true;
		
		$form->bind($r);
	}else{
		$this->saved = false;
	}
	
	$this->contactForm = $form;
	$this->photos = $photos;
	$this->adItems = $adItems;
	$this->product = $product;
  }
}

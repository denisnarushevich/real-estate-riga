<?php

/**
 * info actions.
 *
 * @package    realestate
 * @subpackage info
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class infoActions extends sfActions
{
 /**
  * Executes index action
  *
  * @param sfRequest $request A request object
  */
  public function executeIndex(sfWebRequest $request)
  {
    $this->forward('default', 'index');
  }
  
  public function executeBuilding(sfWebRequest $request)
  {
	$this->name = $this->getActionName();
    
	$content = Doctrine_Query::create()
			->from('TextPage')
			->where('page_name = "building"')
			->execute();
	
	$this->content = $content[0]->getContent();
	
	$this->setTemplate('index');
  }
  
  public function executeRenovation(sfWebRequest $request)
  {
	$this->name = $this->getActionName();
   
	$content = Doctrine_Query::create()
			->from('TextPage')
			->where('page_name = "renovation"')
			->execute();
	
	$this->content = $content[0]->getContent();
	
	$this->setTemplate('index');
  }
  
  public function executeLegal(sfWebRequest $request)
  {
	$this->name = $this->getActionName();
   
	$content = Doctrine_Query::create()
			->from('TextPage')
			->where('page_name = "legal"')
			->execute();
	
	$this->content = $content[0]->getContent();
	
	$this->setTemplate('index');
  }
  
  public function executePrivacy(sfWebRequest $request)
  {
	$this->name = $this->getActionName();
   
	$content = Doctrine_Query::create()
			->from('TextPage')
			->where('page_name = "privacy"')
			->execute();
	
	$this->content = $content[0]->getContent();
	
	$this->setTemplate('index');
  }
  
  public function executeAccessibility(sfWebRequest $request)
  {
	$this->name = $this->getActionName();
   
	$content = Doctrine_Query::create()
			->from('TextPage')
			->where('page_name = "Accessibility"')
			->execute();
	
	$this->content = $content[0]->getContent();
	
	$this->setTemplate('index');
  }
  
  public function executeCredits(sfWebRequest $request)
  {
	$this->name = $this->getActionName();
   
	$content = Doctrine_Query::create()
			->from('TextPage')
			->where('page_name = "Credits"')
			->execute();
	
	$this->content = $content[0]->getContent();
	
	$this->setTemplate('index');
  }
}

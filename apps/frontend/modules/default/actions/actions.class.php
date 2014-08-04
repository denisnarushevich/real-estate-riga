<?php

/**
 * default actions.
 *
 * @package    realestate
 * @subpackage default
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class defaultActions extends sfActions
{
 /**
  * Executes index action
  *
  * @param sfRequest $request A request object
  */
  public function executeIndex(sfWebRequest $request)
  {
	  if(!$request->getParameter('sf_culture')){
		if ($this->getUser()->isFirstRequest()){
		  $culture = $request->getPreferredCulture(array('lv', 'ru', 'en'));
		  $this->getUser()->setCulture($culture);
		  $this->getUser()->isFirstRequest(false);
		}else{
		  $culture = $this->getUser()->getCulture();
		}

		$this->redirect('localized_homepage');
	  }
 
	  
		$monthDeals = Doctrine_Query::create()
				->select()
				->from('Listing l')
				->leftJoin('l.Translation t')
				->where('t.lang = ? and month_deal', $this->getUser()->getCulture())
				->orderBy('l.created_at desc')
				->limit(6)
				->execute();
		
	  $this->deals = $monthDeals;
	 //$this->renderText('test');
	 //return(sfView::NONE);
    //$this->forward('default', 'module');
	  
  }
  
  function executeLv(sfWebRequest $request){
	  $ref = $request->getReferer();
	  $newRef = str_replace(array('/en/','/ru/'), '/lv/', $ref);
	  
	  $this->getUser()->setCulture('lv');
	  
	  $this->redirect($newRef);
	  return(sfView::NONE);
  }
  
  function executeRu(sfWebRequest $request){
	  $ref = $request->getReferer();
	  $newRef = str_replace(array('/lv/','/en/'), '/ru/', $ref);
	  
	  $this->getUser()->setCulture('ru');
	  
	  $this->redirect($newRef);
	  return(sfView::NONE);
  }
  
  function executeEn(sfWebRequest $request){
	  $ref = $request->getReferer();
	  $newRef = str_replace(array('/lv/','/ru/'), '/en/', $ref);
	  
	  $this->getUser()->setCulture('en');
	  
	  $this->redirect($newRef);
	  return(sfView::NONE);
  }
}

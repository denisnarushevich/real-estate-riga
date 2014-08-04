<?php

/**
 * listing actions.
 *
 * @package    realestate
 * @subpackage listing
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class listingActions extends sfActions
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
	
	function executeAppartments(sfWebRequest $request){
		//get cities for filter
		$cities = city::getAllCities($this->getUser()->getCulture());
		
		$cities_array = array();
		$cities_array[''] = ''; //setting empty element as head.
		foreach($cities as $city){
			$cities_array[$city['id']] = $city['name'];
		}

		
		//get district for filter
		$districts = location::getAllDistricts($this->getUser()->getCulture());
		
		$districts_array = array();
		foreach($districts as $district){
			$districts_array[$district['city_id']][$district['id']] = $district['name'];
		}
		
		//passing to JS
		$this->districts = json_encode($districts_array);
		$this->cities = json_encode($cities_array); //passing cities by json to avoid city name add to trans_unit table. dunno why it happens.
		
		
		
		//creating filter form
		$filterForm = new ListingFilterForm();
		
		//$filterForm->getWidget('city')->setOption('choices', $cities_array);
		
		//create pager
		$pager = new sfDoctrinePager('listing', 6);
		$pager->setPage($request->getParameter('page',1));
		
		//if form were submited
		if($request->hasParameter('filterForm')){
			//bind data
			$formData = $request->getParameter('filterForm');
			$filterForm->bind($formData);
			
			//adding choices to district adn city field
			if(isset($formData['district'], $formData['city'])){
				$filterForm->setWidget('district', new sfWidgetFormSelect(array(
					'choices' => $districts_array[$formData['city']]
				)));
				
				$filterForm->setWidget('city', new sfWidgetFormSelect(array(
					'choices' => $cities_array
				)));			
			}
			
			//filter items
			//$appartments = Doctrine_Query::create()
			$appartments = $pager->getQuery()
					->from('listing')
					->where('not is_house and not for_rent');
			
			if($formData['city']){
				$appartments->andWhere('city_id = ?', $formData['city']);
			}
			if(isset($formData['district'])){
				$appartments->andWhere('location_id = ?', $formData['district']);
			}
			if(is_numeric($formData['rooms_from'])){
				$appartments->andWhere('rooms >= ?', $formData['rooms_from']);
			}
			if(is_numeric($formData['rooms_to'])){
				$appartments->andWhere('rooms <= ?', $formData['rooms_to']);
			}
			if(is_numeric($formData['price_from'])){
				$appartments->andWhere('price >= ?', $formData['price_from']);
			}
			if(is_numeric($formData['price_to'])){
				$appartments->andWhere('price <= ?', $formData['price_to']);
			}
			if(is_numeric($formData['area_from'])){
				$appartments->andWhere('area >= ?', $formData['area_from']);
			}
			if(is_numeric($formData['area_to'])){
				$appartments->andWhere('area <= ?', $formData['area_to']);
			}
			if(isset($formData['has_photos'])){
				$appartments->andWhere('main_photo');
			}
			if(isset($formData['has_videos'])){
				$appartments->andWhere('has_videos');
			}
			if(isset($formData['is_on_map'])){
				$appartments->andWhere('google_map_location');
			}
			
			//var_dump($appartments->getSqlQuery());
			//$appartments = $appartments->execute();
			
		}else{
			//get all items items
			//$appartments = Doctrine_Core::getTable('listing')->findBy('property_type', 'appartment');
			$appartments = $pager->getQuery()->andWhere('not is_house and not for_rent');
		}
		
		$pager->init();
		
		
		
		
		
		$this->ads = Doctrine_Query::create()
				->select('a.id as id, a.name as name, a.filename as filename, a.url as url')
				->from('Advertisement a')
				->leftJoin('a.Translation t')
				->where('t.lang = ? and t.active = ?', array($this->getUser()->getCulture(),1))
				->execute();
		
		$this->filterForm = $filterForm;
		//$this->items = $appartments;
		$this->items = $pager->getResults();
		$this->pager = $pager;
		
		$this->setTemplate('listing');
	}

	function executeHouses(sfWebRequest $request){
		//get cities for filter
		$cities = city::getAllCities($this->getUser()->getCulture());
		
		$cities_array = array();
		$cities_array[''] = ''; //setting empty element as head.
		foreach($cities as $city){
			$cities_array[$city['id']] = $city['name'];
		}

		
		//get district for filter
		$districts = location::getAllDistricts($this->getUser()->getCulture());
		
		$districts_array = array();
		foreach($districts as $district){
			$districts_array[$district['city_id']][$district['id']] = $district['name'];
		}
		
		//passing to JS
		$this->districts = json_encode($districts_array);
		$this->cities = json_encode($cities_array); //passing cities by json to avoid city name add to trans_unit table. dunno why it happens.
		
		
		//creating filter form
		$filterForm = new ListingFilterForm();
		
		//$filterForm->getWidget('city')->setOption('choices', $cities_array);
		
		//create pager
		$pager = new sfDoctrinePager('listing', 6);
		$pager->setPage($request->getParameter('page',1));
		
		//if form were submited
		if($request->hasParameter('filterForm')){
			//bind data
			$formData = $request->getParameter('filterForm');
			$filterForm->bind($formData);
			
			//adding choices to district adn city field
			if(isset($formData['district'], $formData['city'])){
				$filterForm->setWidget('district', new sfWidgetFormSelect(array(
					'choices' => $districts_array[$formData['city']]
				)));
				
				$filterForm->setWidget('city', new sfWidgetFormSelect(array(
					'choices' => $cities_array
				)));
			}
			
			
			//filter items
			//$appartments = Doctrine_Query::create()
			$appartments = $pager->getQuery()
					->from('listing')
					->where('is_house and not for_rent');
			
			if($formData['city']){
				$appartments->andWhere('city_id = ?', $formData['city']);
			}
			if(isset($formData['district'])){
				$appartments->andWhere('location_id = ?', $formData['district']);
			}
			if(is_numeric($formData['rooms_from'])){
				$appartments->andWhere('rooms >= ?', $formData['rooms_from']);
			}
			if(is_numeric($formData['rooms_to'])){
				$appartments->andWhere('rooms <= ?', $formData['rooms_to']);
			}
			if(is_numeric($formData['price_from'])){
				$appartments->andWhere('price >= ?', $formData['price_from']);
			}
			if(is_numeric($formData['price_to'])){
				$appartments->andWhere('price <= ?', $formData['price_to']);
			}
			if(is_numeric($formData['area_from'])){
				$appartments->andWhere('area >= ?', $formData['area_from']);
			}
			if(is_numeric($formData['area_to'])){
				$appartments->andWhere('area <= ?', $formData['area_to']);
			}
			if(isset($formData['has_photos'])){
				$appartments->andWhere('main_photo');
			}
			if(isset($formData['has_videos'])){
				$appartments->andWhere('has_videos');
			}
			if(isset($formData['is_on_map'])){
				$appartments->andWhere('google_map_location');
			}
			
			//var_dump($appartments->getSqlQuery());
			//$appartments = $appartments->execute();
			
		}else{
			//get all items items
			//$appartments = Doctrine_Core::getTable('listing')->findBy('property_type', 'appartment');
			$appartments = $pager->getQuery()->andWhere('is_house and not for_rent');
		}
		
		$pager->init();
		
		
		
		
		
		$this->ads = Doctrine_Query::create()
				->select('a.id as id, a.name as name, a.filename as filename, a.url as url')
				->from('Advertisement a')
				->leftJoin('a.Translation t')
				->where('t.lang = ? and t.active = ?', array($this->getUser()->getCulture(),1))
				->execute();
		
		
		
		
				
		$this->filterForm = $filterForm;
		//$this->items = $appartments;
		$this->items = $pager->getResults();
		$this->pager = $pager;
		
		$this->setTemplate('listing');
	}

	function executeRent(sfWebRequest $request){
		//get cities for filter
		$cities = city::getAllCities($this->getUser()->getCulture());
		
		$cities_array = array();
		$cities_array[''] = ''; //setting empty element as head.
		foreach($cities as $city){
			$cities_array[$city['id']] = $city['name'];
		}

		
		//get district for filter
		$districts = location::getAllDistricts($this->getUser()->getCulture());
		
		$districts_array = array();
		foreach($districts as $district){
			$districts_array[$district['city_id']][$district['id']] = $district['name'];
		}
		
		//passing to JS
		$this->districts = json_encode($districts_array);
		$this->cities = json_encode($cities_array); //passing cities by json to avoid city name add to trans_unit table. dunno why it happens.
		
		
		//creating and configuring filter form
		$filterForm = new ListingRentFilterForm();
		//$filterForm->getWidget('city')->setOption('choices', $cities_array);
		$filterForm->getWidget('type')->setOption('choices', array('' => '','house' => 'house','flat' => 'flat'));
		
		//create pager
		$pager = new sfDoctrinePager('listing', 6);
		$pager->setPage($request->getParameter('page',1));
		
		//if form were submited
		if($request->hasParameter('filterForm')){
			//bind data
			$formData = $request->getParameter('filterForm');
			$filterForm->bind($formData);
			
			//adding choices to district adn city field
			if(isset($formData['district'], $formData['city'])){
				$filterForm->setWidget('district', new sfWidgetFormSelect(array(
					'choices' => $districts_array[$formData['city']]
				)));
				
				$filterForm->setWidget('city', new sfWidgetFormSelect(array(
					'choices' => $cities_array
				)));
			}
			
			
			//filter items
			//$appartments = Doctrine_Query::create()
			$appartments = $pager->getQuery()
					->from('listing')
					->where('for_rent');
			
			if($formData['type']){
				if($formData['type'] == 'house'){
					$appartments->andWhere('is_house');
				}else{
					$appartments->andWhere('not is_house');
				}
			}
			if($formData['city']){
				$appartments->andWhere('city_id = ?', $formData['city']);
			}
			if(isset($formData['district'])){
				$appartments->andWhere('location_id = ?', $formData['district']);
			}
			if(is_numeric($formData['rooms_from'])){
				$appartments->andWhere('rooms >= ?', $formData['rooms_from']);
			}
			if(is_numeric($formData['rooms_to'])){
				$appartments->andWhere('rooms <= ?', $formData['rooms_to']);
			}
			if(is_numeric($formData['price_from'])){
				$appartments->andWhere('price >= ?', $formData['price_from']);
			}
			if(is_numeric($formData['price_to'])){
				$appartments->andWhere('price <= ?', $formData['price_to']);
			}
			if(is_numeric($formData['area_from'])){
				$appartments->andWhere('area >= ?', $formData['area_from']);
			}
			if(is_numeric($formData['area_to'])){
				$appartments->andWhere('area <= ?', $formData['area_to']);
			}
			if(isset($formData['has_photos'])){
				$appartments->andWhere('main_photo');
			}
			if(isset($formData['has_videos'])){
				$appartments->andWhere('has_videos');
			}
			if(isset($formData['is_on_map'])){
				$appartments->andWhere('google_map_location');
			}
			
			//var_dump($appartments->getSqlQuery());
			//$appartments = $appartments->execute();
			
		}else{
			//get all items items
			//$appartments = Doctrine_Core::getTable('listing')->findBy('property_type', 'appartment');
			$appartments = $pager->getQuery()->andWhere('for_rent');
		}
		
		$pager->init();
		
		
		
		
		
		$this->ads = Doctrine_Query::create()
				->select('a.id as id, a.name as name, a.filename as filename, a.url as url')
				->from('Advertisement a')
				->leftJoin('a.Translation t')
				->where('t.lang = ? and t.active = ?', array($this->getUser()->getCulture(),1))
				->execute();
		
		
		
		
				
		$this->filterForm = $filterForm;
		//$this->items = $appartments;
		$this->items = $pager->getResults();
		$this->pager = $pager;
		
		$this->setTemplate('listing');
	}
}

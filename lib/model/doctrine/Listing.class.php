<?php

/**
 * Listing
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @package    realestate
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
class Listing extends BaseListing
{
	function getRoundedPrice() {
		return((int)parent::getPrice());
	}
	
	function getLat(){
		$coords = $this->getGoogleMapLocation();
		$coords = explode(',', $coords);
		return($coords[0]);
	}
	
	function getLng(){
		$coords = $this->getGoogleMapLocation();
		$coords = explode(',', $coords);
		return($coords[1]);
	}
	
	function getPropertyType(){
		return( ($this->getIsHouse() ? 'house' : 'flat') ); 
	}
}
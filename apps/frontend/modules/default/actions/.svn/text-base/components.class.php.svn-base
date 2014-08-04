<?php
class defaultComponents extends sfComponents {
	function executeNews(){
		$news = Doctrine_Query::create()
				->from('News')
				->orderBy('created_at desc')
				->limit(5)
				->execute();
		
		foreach($news as $n){
			$n->setCreatedAt(strtotime($n->getCreatedAt()));
		}
		
		$this->news = $news;
	}
	
	function executeBigSlider(){
		$photos = Doctrine_Query::create()
				->from('SliderPhotos')
				->execute();
		
		$this->photos = $photos;
	}
}
?>

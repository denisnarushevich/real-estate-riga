<?php use_stylesheet('listing.css') ?>

<script type="text/javascript">
	var cities = JSON.parse('<?php echo html_entity_decode($cities); ?>');
	var districts = JSON.parse('<?php echo html_entity_decode($districts); ?>');
	
	$(document).ready(function(){
		$('#filterForm_city').empty();
		$.each(cities, function(id, city){
			$('#filterForm_city').prepend(
				$('<option></option>')
				.attr({'value':id})
				.text(cities[id])
			);
		});			
		
		//on selection of city
		$('#filterForm_city').change(function(){
			//get id of selected city
			var city_id = $('option:selected',this).attr('value');
			
			//clear districts dropdown list
			$('#filterForm_district').empty();
			
			//insert options into districts list
			$.each(districts[city_id], function(id, district){
				$('#filterForm_district').append(
					$('<option></option>')
					.attr({'value':id})
					.text(districts[city_id][id])
				);
			});
		});
		
	});
</script>

<div id="contentWrap">
	<div id="leftColumnContainer">
		<div id="leftColumn">
			<h1><?php echo __('Filter Options');?></h1>
			<?php echo form_tag('listing/'.$sf_context->getActionName(), array('id' => 'filterForm', 'name' => 'filterForm')); ?>
				
							<?php if($sf_context->getActionName() == 'rent'){ ?>
								<div class="fieldRow">
									<?php echo __('Type:');?>
									<?php echo $filterForm['type']->render(); ?>
								</div>
							<?php } ?>
			
				<div class="fieldRow">
					<?php echo __('City:');?>
					<?php echo $filterForm['city']->render(); ?>
				</div>
				<div class="fieldRow">
					<?php echo __('Location') ?>:
					<?php echo $filterForm['district']->render(); ?>
				</div>

				<div class="fieldRowDouble">
					<div class="left">
						<?php echo __('Rooms:');?>
						<?php echo $filterForm['rooms_from']->render(); ?>
					</div>
					<div class="right">
						<?php echo __('to');?>
						<?php echo $filterForm['rooms_to']->render(); ?>
					</div>					
				</div>
				<div class="fieldRowDouble">
					<div class="left">
						<?php echo __('Price:');?>
						<?php echo $filterForm['price_from']->render(); ?>
					</div>
					<div class="right">
						<?php echo __('to');?>
						<?php echo $filterForm['price_to']->render(); ?>
					</div>					
				</div>
				<div class="fieldRowDouble">
					<div class="left">
						<?php echo __('Area:');?>
						<?php echo $filterForm['area_from']->render(); ?>
					</div>
					<div class="right">
						<?php echo __('to');?>
						<?php echo $filterForm['area_to']->render(); ?>
					</div>					
				</div>

				<div class="space"></div>

				<div class="checkRow">
					<?php echo $filterForm['has_photos']->render(); ?>
					<?php echo __('with photos only');?>
				</div>
				<div class="checkRow">
					<?php echo $filterForm['has_videos']->render(); ?>
					<?php echo __('with video');?>
				</div>
				<div class="checkRow">
					<?php echo $filterForm['is_on_map']->render(); ?>
					<?php echo __('showed on map');?>
				</div>

				<div class="space"></div>

				<a class="filterIt greenGlossyButton" onclick="filterForm.submit();"><?php echo __('show me selected');?></a>

			</form>
		</div>

		<div id="ads">			
			<?php foreach($ads as $ad){ ?>
				<a class="ad" href="<?php echo $ad->getUrl();?>">
					<img alt="<?php echo $ad->getName(); ?>" title="<?php echo $ad->getName(); ?>" src="/uploads/ads/250x/<?php echo $ad->getFilename();?>"/>
				</a>
			<?php } ?>
		</div>

	</div>

	<div id="rightContentContainer">
		<div id="rightContent">
			<h1 id="caption">
				<?php echo $sf_context->getActionName(); ?>
			</h1>
			<div id="cards">
				<?php foreach($items as $key => $item){ ?>
				
					<div class="card">
						<div class="photo">
							<img src="<?php echo "/photos/property/thumbs/210x140/".$item->getMainPhoto();?>"/>
						</div>
						<div class="dataRows">
							<div>
								<span class="key"><?php echo __('City:');?></span>
								<span class="value"><?php echo $item->getCity()->getName(); ?></span>
							</div>
							<div>
								<span class="key"><?php echo __('Location:');?></span>
								<span class="value"><?php echo $item->getLocation()->getName(); ?></span>
							</div>
							<div>
								<span class="key"><?php echo __('Property type:');?></span>
								<span class="value"><?php echo $item->getPropertyType(); ?></span>
							</div>
							<div>
								<span class="key"><?php echo __('Apartment size:');?></span>
								<span class="value"><?php echo $item->getArea(); ?> sq.ft</span>
							</div>						
							<div>
								<span class="key"><?php echo __('Rooms:');?></span>
								<span class="value"><?php echo $item->getRooms(); ?></span>
							</div>
						</div>
						<div class="foot">
							<div class="price">$ <?php echo $item->getPrice(); ?></div>
							<a href="<?php echo url_for('@product?id='.$item->getId()); ?>" class="moreInfo greenGlossyButton"><?php echo __('More info');?></a>
						</div>
					</div>
					
				<?php } ?>
				
			</div>
			
			<?php if($pager->haveToPaginate()){ ?>
				<div id="pager">
					<?php if($pager->getPreviousPage() != $pager->getPage()){?>
						<a href="<?php echo url_for('listing/'.$sf_context->getActionName())."?page=".$pager->getPreviousPage();?>" class="prev"><?php echo __('Previous page');?></a>
					<?php }else{ ?>
						<a class="prev inactive"><?php echo __('Previous page');?></a>
					<?php } ?>
						
					<?php	//$pager = new sfDoctrinePager();
						for($i = 1; $i <= $pager->getLastPage(); $i++ ){
							if($i == $pager->getPage()){
								echo "<a href='".url_for('listing/'.$sf_context->getActionName())."?page=".$i."' class='pageNum current'>$i</a>";
							}else{
								echo "<a href='".url_for('listing/'.$sf_context->getActionName())."?page=".$i."' class='pageNum'>$i</a>";
							}
						}
					?>
					
					<?php if($pager->getNextPage() != $pager->getPage()){?>
						<a href="<?php echo url_for('listing/'.$sf_context->getActionName())."?page=".$pager->getNextPage();?>" class="next"><?php echo __('Next page');?></a>
					<?php }else{ ?>
						<a class="next inactive"><?php echo __('Next page');?></a>
					<?php } ?>
				</div>
			<?php } ?>

		</div>
	</div>
</div>
<?php use_stylesheet('home.css') ?>

<?php include_component('default', 'bigSlider') ?>

<script type="text/javascript">
	Cufon.replace('div#leftColumn > h1');
	Cufon.replace('div#rightContent > h1#caption');
</script>

<div id="contentWrap">
	<?php include_component('default', 'news'); ?>

	<div id="rightContentContainer">
		<div id="rightContent">
			<h1 id="caption">
				<?php echo __('DEALS OF THE MONTH');?>
			</h1>
			<div id="cards">
				
				<?php foreach($deals as $key => $deal){ ?>
					<div class="card">
						<div class="photo">
							<img src="<?php echo "/photos/property/thumbs/210x140/".$deal->getMainPhoto();?>"/>
						</div>
						<div class="dataRows">
							<div>
								<span class="key"><?php echo __('City');?>:</span>
								<span class="value"><?php echo $deal->getCity()->getName(); ?></span>
							</div>
							<div>
								<span class="key"><?php echo __('Location');?>:</span>
								<span class="value"><?php echo $deal->getLocation()->getName(); ?></span>
							</div>
							<div>
								<span class="key"><?php echo __('Property type');?>:</span>
								<span class="value"><?php echo $deal->getPropertyType(); ?></span>
							</div>
							<div>
								<span class="key"><?php echo __('Apartment size');?>:</span>
								<span class="value"><?php echo $deal->getArea(); ?> sq.ft</span>
							</div>						
							<div>
								<span class="key"><?php echo __('Rooms');?>:</span>
								<span class="value"><?php echo $deal->getRooms(); ?></span>
							</div>
						</div>
						<div class="foot">
							<div class="price">$ <?php echo $deal->getPrice(); ?></div>
							<a href="<?php echo url_for('@product?id='.$deal->getId()); ?>" class="moreInfo greenGlossyButton"><?php echo __('More info');?></a>
						</div>
					</div>
				<?php } ?>
				
			</div>
		</div>
	</div>
</div>
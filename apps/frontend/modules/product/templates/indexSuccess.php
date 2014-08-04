<?php use_stylesheet('product.css') ?>
<?php use_javascript('http://maps.googleapis.com/maps/api/js?sensor=false') ?>

<script type="text/javascript">
  $(document).ready(function(){
	var lat = <?php echo $product->getLat(); ?>;
	var lng = <?php echo $product->getLng(); ?>;
	
    var latlng = new google.maps.LatLng(lat, lng);
    var myOptions = {
      zoom: 14,
      center: latlng,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document.getElementById("gMap"), myOptions);
	
 var marker = new google.maps.Marker({
      position: latlng,
      title:"<?php echo $product->getStreet();?>"
  });
  
  // To add the marker to the map, call setMap();
	marker.setMap(map); 
  });
</script>

<script type="text/javascript">
	$(document).ready(function(){
		var width = 0;
		
		//counting width of all images. not working for IE9
		$('#thumbnails img').each(function(){
			$(this).load(function(){
				width += $(this).width()+10; //10 for padding of each image
				//$('#photosContainer').css({'width': width});
			});
		});
		
		var left = 335;
		var cssLeft = $('#thumbnails > div').css('left');
		
		//on mouse move we calculate position on mouse in #thumbnails 
		//and gettin' left pos of photos container
		$('#thumbnails img').mousemove(function(e){
			var offset = $('#thumbnails').offset();
			left = e.pageX-offset.left;
								
			cssLeft = $('#thumbnails > div').css('left').split('px');
			cssLeft = Number(cssLeft[0]);
				//console.log(left);
		});
		
		var interval;
		var k;
		//on mouse over we start interval and move photos in calculated direction
		// and with calculated speed, depending on how near mouse is to border of div.
		$('#thumbnails img').mouseover(function(e){
			interval = setInterval(function(){
				if(left < 300){
					k = -(left-300)/300;
					cssLeft = cssLeft+(9*k);
					newCssLeft = cssLeft;
					
					if(newCssLeft <= 0){
						$('#thumbnails > div').css({'left': newCssLeft});
					}else{
						clearInterval(interval);
					}
				}

				if(left > 300){
					k = (670-left-300)/300;
					cssLeft = cssLeft+(9*k);
					newCssLeft = cssLeft;
					
					if((newCssLeft >= -(width-670-10)) || (width==0)){
						$('#thumbnails > div').css({'left': newCssLeft});
					}else{
						clearInterval(interval);
					}
				}
			},33);
		});
		
		//kill interval\stop slider when mouse is out of box
		$('#thumbnails img').mouseout(function(e){
			clearInterval(interval);
		});
		//$('#thumbnails').mouseout(function(e){alert(1)});
	});
</script>

<script type="text/javascript">
	function switchPhoto(id){
		$('#bigPhotos > img').each(function(){
			$(this).hide();
		});
		$('#bigPhoto_'+id).fadeIn();
	}
</script>

<div id="contentWrap">

	<h1 id="caption" class="inactive">
		<div class="inactive">
			<?php echo __($referer);?>
		</div>
		<a href="<?php echo $refererUrl; ?>">
			<?php echo __('back to list');?>
		</a>
	</h1>

	<div id="leftContentContainer">

		<div id="leftContent">

			<div id="bigPhotos">
				<img id="bigPhoto_main" style="display: block;" src="/photos/property/thumbs/670x/<?php echo $product->getMainPhoto(); ?>" />
				<?php foreach($photos as $photo){ ?>
					<img id="bigPhoto_<?php echo $photo->getId();?>" style="display: none;" src="/photos/property/thumbs/670x/<?php echo $photo->getFilename(); ?>" />
				<?php } ?>
			</div>

			<div class="dottedSeparator">

			</div>

			
			<div id="thumbnails">
				<div id="photosContainer">
						<a>
							<img onclick="switchPhoto('main');" src="/photos/property/thumbs/x120/<?php echo $product->getMainPhoto(); ?>" />	
						</a>
					<?php foreach($photos as $photo){ ?>
						<a>
							<img onclick="switchPhoto(<?php echo $photo->getId()?>);" src="/photos/property/thumbs/x120/<?php echo $photo->getFilename(); ?>" />	
						</a>
					<?php } ?>
				</div>
			</div>
			

			<div id="infoContainer">
				<div class="fields">
					<div class="field">
						<span class="key"><?php echo __('ID');?>:</span>
						<span class="value"><?php echo $product->getId(); ?></span>
					</div>
					<div class="field">
						<span class="key"><?php echo __('City');?>:</span>
						<span class="value"><?php echo $product->getCity()->getName(); ?></span>
					</div>
					<div class="field">
						<span class="key"><?php echo __('Place');?>:</span>
						<span class="value"><?php echo $product->getLocation()->getName(); ?></span>
					</div>
					<div class="field">
						<span class="key"><?php echo __('Property type');?>:</span>
						<span class="value"><?php echo $product->getPropertyType(); ?></span>
					</div><div class="field">
						<span class="key"><?php echo __('Living area');?>:</span>
						<span class="value"><?php echo $product->getArea(); ?> Sq. ft.</span>
					</div>
					<div class="field">
						<span class="key"><?php echo __('Rooms');?>:</span>
						<span class="value"><?php echo $product->getRooms(); ?></span>
					</div>
					<div class="field">
						<span class="key"><?php echo __('Floor');?>:</span>
						<span class="value"><?php echo $product->getFloor(); ?></span>
					</div>
					<div class="field">
						<span class="key"><?php echo __('Floors');?>:</span>
						<span class="value"><?php echo $product->getFloors(); ?></span>
					</div>
					<div class="field">
						<span class="key"><?php echo __('Renovated');?>:</span>
						<span class="value"><?php echo ($product->getIsRenovated() ? 'Yes' : 'No'); ?></span>
					</div>
					<div class="field">
						<span class="key"><?php echo __('Furnished');?>:</span>
						<span class="value"><?php echo ($product->getIsFurnished() ? 'Yes' : 'No'); ?></span>
					</div>
					<div class="field">
						<span class="key"><?php echo __('Overall views');?>:</span>
						<span class="value"><?php echo $product->getNumViews(); ?></span>
					</div>

					<div class="price">
						$<?php echo $product->getRoundedPrice().($product->getForRent() ? '/'.__('month') : null); ?>
					</div>
				</div>

				<div class="map" id="gMap">
					<?php echo __('Sorry! Current property isn\'t located on the map!');?>
				</div>
			</div>

			<div id="textInfoContainer">
				<h2><?php echo __('Textual information block');?></h2>
				<?php echo htmlspecialchars_decode($product->getDescription()); ?>
			</div>
		</div>

	</div>

	<div id="rightColumnContainer">

		<?php include_component('product', 'contactUs', array('contactForm'=>$contactForm,'id'=>$product->getId(),'saved'=>$saved)); ?>
		
		<div class="additionalRightColumns">
			<h1><?php echo $referer; ?><span> in <?php echo $product->getCity()->getCleanName(); ?></span></h1>
			
			<?php foreach($adItems as $key => $adItem){ ?>
				<div>
					<a href="<?php echo url_for("product/index?id=".$adItem->getId()); ?>">
						<img src=<?php echo "/photos/property/thumbs/226x/".$adItem->getMainPhoto(); ?> />
						<div class="price">$ <span><?php echo $adItem->getRoundedPrice(); ?></span> <?php echo ($adItem->getForRent() ? '/ month' : ''); ?></div>
						<div class="area"><?php echo $adItem->getArea(); ?> sq. ft.</div>
					</a>
				</div>
			<?php } ?>

		</div>
	</div>
</div>
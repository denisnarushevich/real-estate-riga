<?php use_stylesheet('contacts.css') ?>
<?php use_javascript('http://maps.googleapis.com/maps/api/js?sensor=false') ?>

<script type="text/javascript">
  $(document).ready(function(){
	var lat = <?php echo $lat; ?>;
	var lng = <?php echo $lng; ?>;
	
    var latlng = new google.maps.LatLng(lat, lng);
    var myOptions = {
      zoom: 15,
      center: latlng,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document.getElementById("gMap"), myOptions);
	
 var marker = new google.maps.Marker({
      position: latlng,
      title:"Hello World!"
  });
  
  // To add the marker to the map, call setMap();
	marker.setMap(map); 
  });
</script>

<div id="contentWrap">

	<h1 id="caption" class="inactive">
		<?php echo __('contacts');?>
	</h1>

	<div id="wideContentContainer">

		<div id="wideContent">

			<div class="leftContent">
				<div>
					<?php echo $content ?>
				</div>

				<?php echo form_tag('contacts/index', array('id' => 'contactForm2', 'name' => 'contactForm2')); ?>
					<div class="field">
						<?php echo __('Your name');?>:
						<?php echo $contactForm2['name']->render(); ?>
					</div>

					<div class="field">
						<?php echo __('Company');?>:
						<?php echo $contactForm2['company']->render(); ?>
					</div>

					<div class="field">
						<?php echo __('E-mail');?>:
						<?php echo $contactForm2['mail']->render(); ?>
					</div>

					<div class="field">
						<?php echo __('Message');?>:
						<?php echo $contactForm2['message']->render(); ?>
					</div>

					<a class="sendIt greenGlossyButton" onclick="contactForm2.submit();">
						<?php echo __('send the message');?>
					</a>
					
					<div class="sendItResult">
						<?php if($saved){
							echo __('Your message sent').'!';
						}?>
					</div>
				</form>

			</div>




			<div class="rightContent">

				<div>

					<p><span><?php echo __('SIA "Real Estate Latvia"');?></span></p>
					<p><span><?php echo __('Terbatas street 55');?></span></p>
					<p><span><?php echo __('LV - 1001, Riga, Latvia');?></span></a>

					<div class="contacts">
						<div class="left">
							<div><span><?php echo __('Phone');?>:</span> <?php echo __('(+371) XXX XXX XXX');?></div>
							<div><span><?php echo __('Fax');?>:</span> <?php echo __('(+371) 32 000 231');?></div>
						</div>

						<div class="right">
							<div><span><?php echo __('E-mail');?>:</span> <?php echo __('info@realestate.com');?></div>
							<div><span><?php echo __('Marketing');?>:</span> <?php echo __('marketing@realestate.com');?></div>
						</div>
					</div>

				</div>

				<div id="gMap" class="map">

				</div>

			</div>

		</div>

	</div>



</div>
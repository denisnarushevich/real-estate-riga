<?php

/*
 * This file is part of the symfony package.
 * (c) Fabien Potencier <fabien.potencier@symfony-project.com>
 * 
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

/**
 * sfWidgetFormInput represents an HTML input tag.
 *
 * @package    symfony
 * @subpackage widget
 * @author     Fabien Potencier <fabien.potencier@symfony-project.com>
 * @version    SVN: $Id: sfWidgetFormInput.class.php 30762 2010-08-25 12:33:33Z fabien $
 */
class sfWidgetFormInputGmap extends sfWidgetForm
{
  /**
   * Constructor.
   *
   * Available options:
   *
   *  * type: The widget type
   *
   * @param array $options     An array of options
   * @param array $attributes  An array of default HTML attributes
   *
   * @see sfWidgetForm
   */
  protected function configure($options = array(), $attributes = array())
  {
    $this->addRequiredOption('type');

    // to maintain BC with symfony 1.2
    $this->setOption('type', 'text');
  }
  
  
  public function getJavascripts()
  {
    return array(
      'http://maps.googleapis.com/maps/api/js?sensor=false'
    );
  }
  /**
   * Renders the widget.
   *
   * @param  string $name        The element name
   * @param  string $value       The value displayed in this widget
   * @param  array  $attributes  An array of HTML attributes to be merged with the default HTML attributes
   * @param  array  $errors      An array of errors for the field
   *
   * @return string An HTML tag string
   *
   * @see sfWidgetForm
   */
  public function render($name, $value = null, $attributes = array(), $errors = array())
  {
	  if(strlen($value) > 0){
		  $lnglat = explode(',',$value);
		  $lat = $lnglat[0];
		  $lng = $lnglat[1];
	  }else{
		  $lat = 56.94681;
		  $lng = 24.10566;
	  }
	  
	  $html = $this->renderTag('input', array_merge(array('type' => $this->getOption('type'), 'name' => $name, 'value' => $value), $attributes));
	  $html .= "<div id='gMap'></div>";
	  $html .= '
		<style>
			#gMap {
				margin-top: 10px;
				width: 640px;
				height: 480px;
			}
		</style>

		<script type="text/javascript">
		$(document).ready(function(){
			var lat = '.$lat.';
			var lng = '.$lng.';

			var latlng = new google.maps.LatLng(lat, lng);
			var myOptions = {
			  zoom: 14,
			  center: latlng,
			  mapTypeId: google.maps.MapTypeId.ROADMAP
			};
			
			var map = new google.maps.Map(document.getElementById("gMap"), myOptions);
			
			var marker = new google.maps.Marker({
				position: map.getCenter(),
				title:"Property position"
			});
			marker.setMap(map)
			
			var last_point;
			google.maps.event.addListener(map, \'mousemove\', function(point){
				last_point = point;
			});	

			google.maps.event.addListener(map, \'click\', function() {
				marker.setPosition(last_point.latLng);
				map.panTo(last_point.latLng);
				$("#listing_google_map_location").val(last_point.latLng.lat().toFixed(5)+\', \'+last_point.latLng.lng().toFixed(5));
			});
		});
		</script>
	  ';
	  return $html;
  }
}
?>
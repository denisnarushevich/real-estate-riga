$(document).ready(function(){
	$('.sf_admin_filter').hide();
	$('#sf_admin_bar').css({
		'position': 'relative',
		'width': '200px'
	});
	
	var filterToggleSwitch = $('#sf_admin_bar').prepend('<div>Show filters</div>');
	filterToggleSwitch.css({
		'height': '40px',
		'background-color': '#f6f6f6',
		'color': '#111',
		'font-weight': 'bold',
		'text-align': 'center',
		'line-height': '40px',
		'border': '1px solid #e6e6e6',
		'cursor': 'pointer',
		'margin-bottom': '10px'
	});
	
	$('.sf_admin_filter').css({
		'position': 'absolute',
		'right': '0px',
		'z-index': '1'
	});
	
	$('#sf_admin_bar > div:first-child').click(function(){
		$('.sf_admin_filter').each(function(){
			$(this).slideToggle();
		});
	});
});
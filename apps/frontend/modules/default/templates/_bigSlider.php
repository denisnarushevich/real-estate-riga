<script type="text/javascript">
	function switchToPhoto(onum){
		var width = $('#sliderFilm div').width();
		var currentLeft = -($('#sliderFilm').css('left').replace(/[^-\d\.]/g, ''));
		var currentOnum = (currentLeft/width)+1;
		var newLeft = width*(onum-1);		
		var dLeft = currentLeft-newLeft;
		$('#sliderFilm').animate({'left': '+='+dLeft}, 400, function(){
			var onum = clickStack.pop();
			if(onum){
				switchToPhoto(onum);
			}else{
				lock = false;
			}
		});
	};
	
	var clickStack = new Array();
	var lock = false;
	
	$(document).ready(function(){
		var nMax=0;
		
		
		$('#slider > .controls > a').each(function(){
			$(this).click(function(){
				clearInterval(intervalId);
				
				var id = $(this).attr('id').split('_');
				id=id[1];
				
				clickStack.push(id);
				if(!lock){
					switchToPhoto(id);
				}
				lock = true;
			});
			nMax++;
		});
		
		var n=1;
		var intervalId = setInterval(function(){
			if(n>nMax){
				n=1;
			}
			
			switchToPhoto(n);
			
			n++;
			
		}, 3500);
	});
	
</script>

<div id="slider">
	<div class="controls">
		<?php foreach($photos as $photo){ ?>
			<a id="sliderPhotoButton_<?php echo $photo->getId();?>"></a>
		<?php } ?>
	</div>
	
	<div id="viewPort">
		<div id="sliderFilm">
			<?php $display=1;foreach($photos as $photo){ ?>
				<div id="sliderPhoto_<?php echo $photo->getId(); ?>">
					<img src="<?php echo "/photos/slider/thumbs/940x380/".$photo->getFilename(); ?>"/>
				</div>
			<?php $display=0;} ?>
		</div>
	</div>
</div>

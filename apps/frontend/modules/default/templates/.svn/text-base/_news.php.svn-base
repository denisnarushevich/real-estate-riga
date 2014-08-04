<div id="leftColumnContainer">
	<div id="leftColumn">
		<h1><?php echo __('Latest news')?></h1>
		<div>
			<?php foreach($news as $key => $n){?>
				<div class="newsInstance">
					<div class="head">
						<div class="dateDay">
							<?php echo date('j',$n->getCreatedAt()); ?>
						</div>
						<div class="dateMonthYear">
							<?php echo date('F, Y', $n->getCreatedAt()); ?>
						</div>
					</div>
					<p>
						<?php echo substr(strip_tags(htmlspecialchars_decode($n->getContent())),0,128).'...'; ?> 
					</p>
					<a class="readMore" href="#news<?php echo $key; ?>"><?php echo __('READ MORE')?></a>
				</div>
				
				<script>
				  $('.newsInstance > a').fancybox({
					  'padding' : 0,
					  'margin' : 0,
					  'titleShow' : false,
					  'onComplete': function(){
						  //
					  }
				  });
				</script>
				
				<script type="text/javascript">
					Cufon.replace('div.modale > h1');
				</script>
			
				<div style="display: none;">
					<div class="modale" id="news<?php echo $key; ?>">
						<h1><?php echo date('j F, Y', $n->getCreatedAt()); ?></h1>
						<div>
							<?php echo htmlspecialchars_decode($n->getContent()); ?>
						</div>
					</div>
				</div>
			<?php } ?>

		</div>	
	</div>
</div>
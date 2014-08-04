<?php use_stylesheet('building.css') ?>

<div id="contentWrap">
	<?php include_component('default', 'news'); ?>

	<div id="rightContentContainer">
		<div id="rightContent">
			<h1 id="caption">
				<?php echo $name ?>
			</h1>
			<div id="textualContent">
				<?php echo htmlspecialchars_decode($content); ?>
			</div>
		</div>
	</div>
</div>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
		<meta name="author" lang="en" content="Narushevich Denis, Rainmaker Ltd." />
		<?php include_http_metas() ?>
		<?php include_metas() ?>
		<link rel="shortcut icon" href="/favicon.ico" />
		<link href='http://fonts.googleapis.com/css?family=Ubuntu+Condensed|Open+Sans+Condensed:300,300italic|Open+Sans:400,600,700,300|Didact+Gothic&subset=latin,cyrillic-ext,latin-ext,cyrillic' rel='stylesheet' type='text/css'>
		<?php include_stylesheets() ?>
		<?php include_javascripts() ?>
        <?php include_title() ?>
    </head>
	<body>
		<div id="wrap">
			<div id="flags">
				<?php echo link_to(' ', 'default/en', array('id' => 'en')); ?>
				<?php echo link_to(' ', 'default/ru', array('id' => 'ru')); ?>
				<?php echo link_to(' ', 'default/lv', array('id' => 'lv')); ?>
			</div>
			
				<script type="text/javascript">
					Cufon.replace('div#head a', {hover: true});
				</script>

			<?php
				$module = $sf_context->getModuleName();
				$action = $sf_context->getActionName();
				
				//additional conditions for link_to f-ns below
				$is_houses = ( $module == 'product' && $sf_context->getUser()->getAttribute('currentMenuItem') == 'houses' );
				$is_flats = ( $module == 'product' && $sf_context->getUser()->getAttribute('currentMenuItem') == 'appartments' );
				$is_rent = ( $module == 'product' && $sf_context->getUser()->getAttribute('currentMenuItem') == 'rent' );
			?>
			
			<div id="head">
				<?php echo link_to(' ', 'default/index', array('class' => 'logo')); ?>
				<div class="separator"></div>
				<?php echo link_to(__('home'), 'default/index', array('class' => 'button home'.($module == "default" ? ' selected' : ''))); ?>
				<div class="separator"></div>
				<?php echo link_to(__('appartments'), 'listing/appartments', array('class' => 'button appartments'.(($module == "listing" && $action == "appartments") || ($is_flats) ? ' selected' : ''))); ?>
				<div class="separator"></div>
				<?php echo link_to(__('houses'), 'listing/houses', array('class' => 'button houses'.(($module == "listing" && $action == "houses") || ($is_houses) ? ' selected' : ''))); ?>
				<div class="separator"></div>
				<?php echo link_to(__('rent'), 'listing/rent', array('class' => 'button rent'.(($module == "listing" && $action == "rent") || ($is_rent) ? ' selected' : ''))); ?>
				<div class="separator"></div>
				<?php echo link_to(__('building'), 'info/building', array('class' => 'button building'.($module == "info" && $action == "building" ? ' selected' : ''))); ?>
				<div class="separator"></div>
				<?php echo link_to(__('renovation'), 'info/renovation', array('class' => 'button interior'.($module == "info" && $action == "renovation" ? ' selected' : ''))); ?>
				<div class="separator"></div>
				<?php echo link_to(__('contacts'), 'contacts/index', array('class' => 'button contacts'.($module == "contacts" ? ' selected' : ''))); ?>
				<div class="separator"></div>
			</div>
			
			<?php echo $sf_content ?>
			
				
			<div id="foot">
				<div>
					<?php echo __('RealEstate &copy; 2011 / All rights reserved to it’s perspective owners');?>
				</div>
				<div>
					<?php echo link_to(__('Privacy'), 'info/privacy', array()); ?> <div></div>
					<?php echo link_to(__('Legal'), 'info/legal', array()); ?> <div></div>
					<?php echo link_to(__('Accessibility'), 'info/accessibility', array()); ?> <div></div>
					<?php echo link_to(__('Credits'), 'info/credits', array()); ?>
				</div>
			</div>
		</div>
	</body>
</html>

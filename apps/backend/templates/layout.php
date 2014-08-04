<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <?php include_http_metas() ?>
    <?php include_metas() ?>
    <?php include_title() ?>
    <link rel="shortcut icon" href="/favicon.ico" />
    <?php include_stylesheets() ?>
    <?php include_javascripts() ?>
  </head>
  <body
	  <div>
		  <a href="<?php echo url_for('listing');?>">Listing</a>
		  <a href="<?php echo url_for('news');?>">News</a>
		  <a href="<?php echo url_for('slider_photos');?>">Slider photos</a>
		  <a href="<?php echo url_for('text_page');?>">Textual pages</a>
		  <a href="<?php echo url_for('messages');?>">Messages</a>
		  <a href="<?php echo url_for('advertisement');?>">Advertisement</a>
		  <a href="<?php echo url_for('text/trans');?>">Translations</a>
	  </div>
    <?php echo $sf_content ?>
  </body>
</html>

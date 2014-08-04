<div id="rightColumn">
	<h1><?php echo __('contact us');?></h1>
	<?php echo form_tag('product/'.$id, array('id' => 'contactForm', 'name' => 'contactForm')); ?>
		<div class="fieldRow">
			<?php echo __('Your name');?>:
			<?php echo $contactForm['name']->render(); ?>
		</div>
		<div class="fieldRow">
			<?php echo __('E-mail or phone number');?>:
			<?php echo $contactForm['mailOrPhone']->render(); ?>
		</div>
		<div class="fieldRow">
			<?php echo __('Message');?>:
			<?php echo $contactForm['message']->render(); ?>
		</div>

		<div class="checkRow">
			<?php echo $contactForm['aboutProduct']->render(); ?>
			<?php echo __('Contact about this classified');?>
		</div>
		<div class="space"></div>
		<a class="sendIt greenGlossyButton" onclick="contactForm.submit();"><?php echo __('send the message');?></a>
		<?php if($saved){ ?>
			<div class="space"></div>
			<div>
				<?php echo __('Your message sent!');?>
			</div>
		<?php }?>
	</form>
</div>
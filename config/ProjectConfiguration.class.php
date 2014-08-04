<?php
//TODO move sf lib to outside of proj
//require_once 'C://dev//sf//symfony-1.4.14//lib/autoload/sfCoreAutoload.class.php';
require_once 'C://dev//sf//symfony-1.4.14//lib/autoload/sfCoreAutoload.class.php';
sfCoreAutoload::register();

class ProjectConfiguration extends sfProjectConfiguration
{
  public function setup()
  {
    $this->enablePlugins('sfDoctrinePlugin');
    $this->enablePlugins('sfFormExtraPlugin');
    $this->enablePlugins('sfThumbnailPlugin');
    $this->enablePlugins('sfJqueryReloadedPlugin');
    $this->enablePlugins('sfDoctrineGuardPlugin');
  }
}

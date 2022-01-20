<?php
namespace SCANDIWEB;
use SCANDIWEB\Lib\FrontController;
use SCANDIWEB\Lib\Template;
if (!defined('DS')) {
  define('DS', DIRECTORY_SEPARATOR);  
}

require_once __DIR__ . DS .  '..'  . DS .  'app' .DS. 'lib' .DS. 'config' .DS. 'config.php';
$template = require_once __DIR__ . DS .  '..'  . DS .  'app' .DS. 'lib' .DS. 'config' .DS. 'template_config.php';
require_once APP_PATH .DS. 'lib' .DS. 'Autoloader.php';
$instance_template = new Template($template);
$front = new FrontController($instance_template);
$front->dispatch();
<?php
if (!defined('DS')) {
  define('DS', DIRECTORY_SEPARATOR);  
}
defined('APP_PATH') ? null : define('APP_PATH', realpath(dirname(__FILE__) . '../../../'));
defined('APP_VIEWS') ? null : define('APP_VIEWS', APP_PATH . DS . 'View' . DS);
//// Template config files
defined('APP_Template') ? null : define('APP_Template', APP_PATH . DS . 'Template' . DS);
defined('CSS') ? null : define('CSS', '/scanditask/public/assets/css/');
defined('JS') ? null : define('JS', '/scanditask/public/assets/js/');

//// Details For database
//////////Define the driver of DB mode and mechanism
if(!defined('DATABASE_CONNECTION_DRIVER')) {
    define('DATABASE_CONNECTION_DRIVER', 1);
}
//define('DATABASE_CONNECTION_DRIVER') ? NULL : define('DATABASE_CONNECTION_DRIVER', 1);
defined('DATABASE_HOST_NAME')       ? null : define ('DATABASE_HOST_NAME', 'localhost');
defined('DATABASE_USER_NAME')       ? null : define ('DATABASE_USER_NAME', 'root');
defined('DATABASE_PASSWORD')        ? null : define ('DATABASE_PASSWORD', '');
defined('DATABASE_DB_NAME')         ? null : define ('DATABASE_DB_NAME', 'scanditaskdb');
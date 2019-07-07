<?php
define('MYSQL_SERVER', 'localhost');
define('MYSQL_USER', 'root');
define('MYSQL_PASSWORD', '');
define('MYSQL_DB', 'filmoteka');
define('HOST', 'http://'. $_SERVER['HTTP_HOST'] .'/');
define('ROOT', dirname(__FILE__) . '/');
session_start();

if (!extension_loaded('imagick')){
    echo 'imagick not installed';
}
phpinfo();
?>
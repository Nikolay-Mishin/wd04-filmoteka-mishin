<?php
define('MYSQL_SERVER', 'localhost');
define('MYSQL_USER', 'root');
define('MYSQL_PASSWORD', '');
define('MYSQL_DB', 'filmoteka');
define('HOST', 'http://'. $_SERVER['HTTP_HOST'] .'/_git/_Cources/PHP_06-Part_10-PHP/wd04-filmoteka-mishin/');
define('ROOT', dirname(__FILE__) . '/');
session_start();

/* if (!extension_loaded('imagick')){
    echo 'imagick not installed';
}
phpinfo(); */

/* require('functions/image_resize.php');
$srcImg = ROOT . 'data/films/14349.jpg';
$destImg = ROOT . 'data/films/14349-thumb.jpg';

make_thumb($srcImg, $destImg, '400', '600'); */
?>
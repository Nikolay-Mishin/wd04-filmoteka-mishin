<?php 
require('config.php');

if ( isset($_POST['user-submit']) ){
	$userName = $_POST['user-name'];
	$userCity = $_POST['user-city'];
	$exrire =  time() + 60*60*24*30;
	
	setcookie('user-name', $userName, $exrire);
	setcookie('user-city', $userCity, $exrire);
}

header('Location: ' . HOST . 'request.php');
// header('Location: http://php-filmoteka/request.php');
?>
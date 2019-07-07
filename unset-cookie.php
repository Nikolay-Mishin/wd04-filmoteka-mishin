<?php 
require('config.php');

if ( isset($_POST['user-unset']) ){
	$userName = '';
	$userCity ='';
	$exrire =  time() - 60*60*24*30;
	
	setcookie('user-name', $userName, $exrire);
	setcookie('user-city', $userCity, $exrire);
}

header('Location: ' . HOST . 'request.php');
// header('Location: http://php-filmoteka/request.php');
?>
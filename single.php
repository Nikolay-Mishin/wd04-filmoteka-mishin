<?php 
require('config.php');
require('database.php');
$link = db_connect();

require('models/films.php');
require('functions/login-functions.php');

// Удаление фильма
if ( @$_GET['action'] == 'delete') {

	$reslut = film_delete($link, $_GET['id']);

	if ( $reslut ) {
		$resultInfo = "<p>Фильм был удален!</p>";
	} else {
		$resultError = "<p>Что то пошло не так.</p>";
	}
}

$film = get_film($link, $_GET['id']);

// echo "<pre>";
// print_r($film);
// echo "</pre>";

include('views/head.tpl');
include('views/notifications.tpl');
include('views/film-single.tpl');
include('views/footer.tpl');
?>
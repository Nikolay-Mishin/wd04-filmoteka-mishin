<?php 
require('config.php');
require('database.php');
$link = db_connect();

require('models/films.php');
require('functions/login-functions.php');

// UPDATE film data in DB
if ( array_key_exists('update-film', $_POST) ) {
	
	// Обработка ошибок
	if ($_POST['title'] == '') {
		$errors[] = "<p>Необходимо ввести название фильма!</p>";
	}
	if ($_POST['genre'] == '') {
		$errors[] = "<p>Необходимо ввести жанр фильма!</p>";
	}
	if ($_POST['year'] == '') {
		$errors[] = "<p>Необходимо ввести год фильма!</p>";
	}

	if (empty($errors) ) {
		$result = film_update($link, $_POST['title'], $_POST['genre'], $_POST['year'], $_GET['id'], $_POST['description']);
		if ( $result ) {
			$resultSuccess = "<p>Фильм был успешно обновлен!</p>";
		}
        else { 
			$resultError = "<p>Что то пошло не так. Добавьте фильм еще раз!</p>";
		}
	}
}

$film = get_film($link, $_GET['id']);

include('views/head.tpl');
include('views/notifications.tpl');
include('views/edit-film.tpl');
include('views/footer.tpl');
?>
<?php 
require('config.php');
require('database.php');
$link = db_connect();

require('functions/login-functions.php');

if (isset($_POST['enter'])) {
	$userName = 'admin';
	$userPassword = '123456';

    $user = get_user($link, 'admin');
    /* 
        echo "<pre>";
        print_r($user);
        echo "</pre>"; 
    */

	if ($_POST['login'] == $user['user_name']) {
		if ($_POST['password'] == $user['user_password']) {

			$_SESSION['user'] = $user['user_name'];
			// header('Location: ' . HOST . 'index.php');
            header('Location: ' . 'index.php');
		}
	}

}

include('views/head.tpl');
include('views/login.tpl');
include('views/footer.tpl');
?>
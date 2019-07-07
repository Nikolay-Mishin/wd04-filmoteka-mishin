<?php 
function isAdmin(){
	if ( isset($_SESSION['user']) ) {
		if ( $_SESSION['user'] == 'admin' ) { 
			$result = true;
		} else {
			$result = false;
		}
	} else {
		$result = false;
	}

	return $result;
}

function get_user($link, $name){
	$query = "SELECT * FROM users WHERE user_name = '" . mysqli_real_escape_string($link, $name) . "' LIMIT 1";
	$result = mysqli_query($link, $query);
	if ( $result = mysqli_query($link, $query) ) {
		$result = mysqli_fetch_array($result, MYSQLI_ASSOC);
	}
	return $result;
}
?>
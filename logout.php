<?php 
require('config.php');
unset($_SESSION['user']);
session_destroy();

// header('Location: ' . HOST . 'index.php');
header('Location: ' . 'index.php');
?>
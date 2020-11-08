<?php
    
	include 'config.php';
	require 'src/connect.php';

    ini_set('display_errors','On');
	$db=connectMysql($dbhost,$dbname,$dbuser,$dbpass);
    $name= filter_input(INPUT_POST,"user",FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $email= filter_input(INPUT_POST,"user",FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $passwd= filter_input(INPUT_POST,"passwd",FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $login=Register($db, $name, $email, $passwd);

    if ($login = 1){
        header("Location:index.php?url=panel");
    }else{
        header("Location:index.php?url=registro");
    }
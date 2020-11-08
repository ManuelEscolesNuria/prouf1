<?php
    
	include 'config.php';
	require 'src/connect.php';

    ini_set('display_errors','On');
	$db=connectMysql($dbhost,$dbname,$dbuser,$dbpass);
	$name= filter_input(INPUT_POST,"user",FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $passwd= filter_input(INPUT_POST,"passwd",FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $login=Login($db, $name, $passwd);

    if($login != null){
        
        if(!isset($_SESSION['username'])){
            $_SESSION['username']=$name;
        }
        header("Location:index.php?url=panel");
    }else {
        header("Location:index.php?url=regaction");
    }
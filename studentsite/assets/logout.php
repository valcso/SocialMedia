<?php 
session_start();
if(isset($_GET['logout'])){

unset($_SESSION['logged_in']);
header("Location:../index.php");

}else{

    header("Location:../index.php");

}

?>
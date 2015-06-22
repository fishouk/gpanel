<?php
session_start();


$pageLinkName="main";
$system_dir = $_SERVER["DOCUMENT_ROOT"] ."/../gp_system/";
include_once $system_dir."config.php";
include_once $system_dir."utils.php";
include_once $system_dir."models/m_mysql.php";
include_once "route.php";
// var_dump($ip, $url);
?>
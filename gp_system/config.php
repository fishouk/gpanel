<?php 
$currentUrl = explode("/", $_SERVER["REQUEST_URI"]);
define("IPUSER", $_SERVER["REMOTE_ADDR"]);// IP клиента
define("TEMPLATE_DIR", $_SERVER["DOCUMENT_ROOT"]."/"."templates/default/"); // Директория шаблонов
define("PUBLIC_DIR", "../../public/");
define("TITLE_PREF", "GP - "); // Префикс к <title>
define("TITLE", "GPanel"); // Название сайта
?>
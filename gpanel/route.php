<?php
if(!$pageLinkName){ // Не баг, а фича
	header("HTTP/1.1 301 Moved Permanently");
	header("Location: /"); 
	exit();
}
// Маршруторизатор страниц
if(!empty($_SESSION["user"]['id'])){
	switch ($currentUrl[1]) {
		case 'exit':
			unset($_COOKIE[session_name()]);
			unset($_COOKIE[session_id()]);
			session_unset();
			session_destroy();
			header('Location: /');
			break;
		case 'profile':
			if(!empty($currentUrl[2]) && $currentUrl[2] == "edit"){
				include_once $system_dir."controllers/user/c_profile_edit.php";
			}else{
				include_once $system_dir."controllers/user/c_profile.php";
			}
			break;
		default:
			if($_SERVER["REQUEST_URI"] === "/"){
				// показываем главную
				include_once $system_dir."controllers/user/c_index.php";
			} else {
				// показываем 404
				$pageTitle ="Уууупс! 404 ошибка!";
				include_once TEMPLATE_DIR."404.php";
			}		
			break;
	}
}else{
	switch ($currentUrl[1]) {
		case 'ChangeLog':
				include_once $system_dir."controllers/guest/c_changeLog.php";
			break;
		
		default:
			if($_SERVER["REQUEST_URI"] === "/"){
				// показываем главную
				include_once $system_dir."controllers/guest/c_index.php";
			} else {
				// показываем 404
				$pageTitle ="Уууупс! 404 ошибка!";
				include_once TEMPLATE_DIR."404.php";
			}		
			break;
	}
}
?>
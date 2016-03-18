<?php

error_reporting(E_ALL ^ E_NOTICE ^ E_WARNING);
if(!isset($_GET['p'])){
	$p="index";
}
else{
	$p = $_GET['p'];	
}
if(!file_exists("pages/".$p.".php"))
{
		$p = '404';
}

ob_start();
include "./pages/".$p.".php";
$content = ob_get_contents();
ob_end_clean();

include "template.php";

?>
<?php
require_once('../init.php');
if(!isset($_SESSION['name'])){
	header('Location:../index.php');
	die();
}
require_once('../inc/header.php');
use App\Controllers\Users;
$arr = Users::where('id','=',$id);
?>

<?php
require_once('../inc/footer.php');
?>
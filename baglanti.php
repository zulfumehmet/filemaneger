<?php
$dizinyolu= "//localhost/site/upload/"; //Resimlerin acilacagi yol
$uploadyolu = "../../upload/"; // resimleri bir ust dizine yukleyecegimiz icin ../ ust sizinlere cikiyoruz.

$user = "root";
$pass = "";
$dbname = "ckeditor";
$host = "localhost";
try {
    $sunucubaglan = new PDO("mysql:host=".$host.";dbname=".$dbname.';charset=utf8;', $user, $pass);
	
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}
function  oturumKontrol($sunucubaglan,$pgs){
	if(isset($_SESSION['username']) && $_SESSION['password']){
		$username = trim($_SESSION['username']);
		$password = trim($_SESSION['password']);
		$login_kontrol = $sunucubaglan->query("SELECT * FROM yonetici WHERE kullanici_adi = '{$username}' and parola = '{$password}'")->fetch(PDO::FETCH_ASSOC);
		if ( $login_kontrol ){
			if($pgs == 0){
				header("Location: index.php");
			}
}
		else {
			if($pgs != 0){
				header("Location: login.php");
			exit();
			}		
		}
}
else {
	if ($pgs != 0)
	{
		header("Location: login.php");
			exit();
	}	
}
}
?>

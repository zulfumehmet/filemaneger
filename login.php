<?php
require_once("baglanti.php");
session_start();
oturumKontrol($sunucubaglan,0);
$login_error = "";
if($_POST )
{
    $username = trim($_POST['username']);
    $password = sha1(md5(trim($_POST['password'])));
    
    $login = $sunucubaglan->prepare("SELECT * FROM yonetici WHERE kullanici_adi = :kullanici_adi and parola = :parola", array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
    $login->execute(array(':kullanici_adi' => $username,':parola' => $password));
    $login = $login->fetch();
    
    if ( $login){
      $_SESSION["username"] = $login['kullanici_adi'];
      $_SESSION["email"] = $login['posta'];
      $_SESSION["password"] = $login['parola'];
      $_SESSION["name"] = $login['isim'];
      header("Location: index.php");
    print_r($login);
}
    else {
      $login_error = '<div class="alert alert-danger alert-dismissible fade in" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                    </button>
                    <strong>Kullanıcı adı veya parola hatalı.
                  </div>';
    }
}
?>



<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Zülfü Mehmet - Site Yönetimi</title>
<link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="js/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="js/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" media="all" href="style.css" />

</head>
<body>
  
  <div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first">
      <img src="logo.png" alt="User Icon" />
    </div>

    <!-- Login Form -->
    <form name="kullanicigirisi" method="POST" action="">
      <input type="text" id="kadi" class="fadeIn second" name="username" placeholder="Kullanıcı Adı">
      <input type="password" id="sifre" class="fadeIn third" name="password" placeholder="Şifre">
      <input type="submit" class="fadeIn fourth" name="girisbuton"  id="girisbuton" value="Giriş Yap">
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="https://www.zulfumehmet.com/">www.zulfumehmet.com</a>
    </div>

  </div>
</div>
  
 

</body>
</html>
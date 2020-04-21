<?php
include("baglanti.php");
session_start();
oturumKontrol($sunucubaglan,1);
include("ust.php");
?>
<div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="form-group">
          <div class="alert alert-primary" role="alert">
             Haber Başlığı
            </div>
          <textarea name="editor"></textarea>
           <script>
                   CKEDITOR.replace( 'editor',  {
                           enterMode: CKEDITOR.ENTER_BR,
                           entities: false,
                           basicEntities: false,
                                filebrowserBrowseUrl: '/site/js/resimler/liste.php',
                                filebrowserWindowWidth: '900',
                                filebrowserWindowHeight: '700'
                           });
              </script>
            </div>
          </div>
        </div>
      </div>


	  <!-- Page Content -->
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        <h1 class="mt-5">ZulfuMehmet.Com</h1>
        <p class="lead">Güncel Döviz Scripti Yönetim Paneli</p>
        <ul class="list-unstyled">
		<li>info@zulfumehmet.com</li>
        </ul>
      </div>
    </div>
  </div>
   </body>
</html>


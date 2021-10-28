<?php
$user = $user->roW();
if ($user->level == "s_admin") {
    $level = "Super Admin";
}else{
    $level = $user->level;
}?>
<!-- Main content -->
<div class="content-wrapper">

  <!-- Content area -->
  <div class="content">

    <!-- Dashboard content -->
    <div class="row">

      <div class="col-md-12">
      <div class="panel panel-flat">
          <div class="panel-body">
              <center>
                <img src="foto/default.png" alt="<?php echo $user->nama_lengkap; ?>" class="img-circle" width="176">
              </center>
            <br>
            <center>
            <h3>Nama : Kacung Samsul Hadi
            <br>
            NIM : 1931710153
            <br>
            Tanggal : 24 Oktober 2021
            </h3>
            </center>                     
          </form>
          </div>
      </div>
    </div>
    <!-- /dashboard content -->

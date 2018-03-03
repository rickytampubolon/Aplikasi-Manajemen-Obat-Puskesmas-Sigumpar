<?php 
include 'header.php';
?>

<?php
$a = mysql_query("select * from obat_keluar");
?>

<div class="col-md-10">
	<h1>Selamat Datang ...</h1>	
    <h1>Aplikasi Manajemen Obat Puskesmas Sigumpar</h1>
	<br></br>
	<img src="../admin/foto/puskesmas.jpg" width="750px" height="350px">
	<br></br>
	<br></br>
	<br></br>

	
</div>
<!-- kalender -->
<div class="pull-right">
	<div id="kalender"></div>
</div>

<?php 
include 'footer.php';

?>
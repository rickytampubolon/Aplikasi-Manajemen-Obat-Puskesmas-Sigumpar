<?php 
include 'config.php';
$id=$_POST['id'];
$tgl=$_POST['tgl'];
$nama=$_POST['nama'];
$jumlah=$_POST['jumlah'];



mysql_query("update obat_keluar set tgl='$tgl', nama='$nama', jumlah='$jumlah' where id='$id'");
header("location:obat_keluar.php");

 ?>
 
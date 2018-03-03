<?php 
include 'config.php';
$nama=$_POST['nama'];
$kelas=$_POST['kelas'];
$formulasi=$_POST['formulasi'];
$restriksi=$_POST['restriksi'];
$kode_pabrik=$_POST['kode_pabrik'];
$modal=$_POST['modal'];
$harga=$_POST['harga'];
$jumlah=$_POST['jumlah'];
$sisa=$_POST['jumlah'];

mysql_query("insert into obat values('','$nama','$kelas','$formulasi','$restriksi','$kode_pabrik','$modal','$harga','$jumlah','$sisa')");
header("location:obat.php");

 ?>
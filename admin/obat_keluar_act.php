<?php 

include 'config.php';
$tgl=$_POST['tgl'];
$nama=$_POST['nama'];
$persediaan=$_POST['persediaan'];
$jumlah=$_POST['jumlah'];
$sisa=$_POST['sisa'];

$dt=mysql_query("select * from obat where nama='$nama'");
$data=mysql_fetch_array($dt);
$sisa=$data['persediaan']-$jumlah;
mysql_query("update obat set jumlah='$sisa' where nama='$nama'");


mysql_query("insert into obat_keluar values('','$tgl','$nama','$persediaan','$jumlah','$sisa')")or die(mysql_error());
header("location:obat_keluar.php");

?>
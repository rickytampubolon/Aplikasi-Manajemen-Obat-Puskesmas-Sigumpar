<?php 
include 'config.php';
$id=$_GET['id'];
$jumlah=$_GET['jumlah'];
$nama=$_GET['nama'];

$a=mysql_query("select jumlah from obat_keluar where nama='$nama'");
$b=mysql_fetch_array($a);
$kembalikan=$b['jumlah']+$jumlah;
$c=mysql_query("update obat set jumlah='$kembalikan' where nama='$nama'");
mysql_query("delete from obat_keluar where id='$id'");
header("location:obat_keluar.php");

 ?>
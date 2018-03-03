<?php 
include 'config.php';
$id=$_POST['id'];
$nama=$_POST['nama'];
$kelas=$_POST['kelas'];
$satuan=$_POST['satuan'];
$penyedia=$_POST['penyedia'];
$stok_awal=$_POST['stok_awal'];
$penerimaan=$_POST['penerimaan'];
$persediaan=$_POST['persediaan'];
$pemakaian=$_POST['pemakaian'];
$sisa=$_POST['sisa'];

mysql_query("update obat set nama='$nama', kelas='$kelas', satuan='$satuan', penyedia='$penyedia', stok_awal='$stok_awal', penerimaan='$penerimaan', persediaan='$persediaan', pemakaian='$pemakaian', sisa='$sisa' where id='$id'");
header("location:obat.php");

 ?>
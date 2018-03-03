<?php 
include 'config.php';
$id=$_GET['id'];
mysql_query("delete from obat where id='$id'");
header("location:obat.php");

?>
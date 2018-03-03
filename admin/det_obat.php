<?php 
include 'header.php';
?>

<h3><span class="glyphicon glyphicon-briefcase"></span>  Detail Obat</h3>
<a class="btn" href="obat.php"><span class="glyphicon glyphicon-arrow-left"></span>  Kembali</a>

<?php
$id_obat=mysql_real_escape_string($_GET['id']);


$det=mysql_query("select * from obat where id='$id_obat'")or die(mysql_error());
while($d=mysql_fetch_array($det)){
	?>					
	<table class="table">
		<tr>
			<td>Nama Generic</td>
			<td><?php echo $d['nama'] ?></td>
		</tr>
		<tr>
			<td>Kelas Terapi</td>
			<td><?php echo $d['kelas'] ?></td>
		</tr>
		<tr>
			<td>Satuan</td>
			<td><?php echo $d['satuan'] ?></td>
		</tr>
		<tr>
			<td>Penyedia</td>
			<td><?php echo $d['penyedia'] ?></td>
		</tr>
		<tr>
			<td>Stok Awal</td>
			<td><?php echo $d['stok_awal'] ?></td>
		</tr>
		
		<tr>
			<td>Penerimaan</td>
			<td><?php echo $d['penerimaan'] ?></td>
		</tr>
		<tr>
			<td>Persediaan</td>
			<td><?php echo $d['persediaan'] ?></td>
		</tr>
		<tr>
			<td>Pemakaian</td>
			<td><?php echo $d['pemakaian'] ?></td>
		</tr>
		<tr>
			<td>Sisa</td>
			<td><?php echo $d['sisa'] ?></td>
		</tr>
	</table>
	<?php 
}
?>
<?php include 'footer.php'; ?>
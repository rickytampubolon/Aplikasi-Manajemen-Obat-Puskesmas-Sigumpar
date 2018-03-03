<?php 
include 'header.php';
?>
<h3><span class="glyphicon glyphicon-briefcase"></span>  Edit Data Obat</h3>
<a class="btn" href="obat.php"><span class="glyphicon glyphicon-arrow-left"></span>  Kembali</a>
<?php
$id_obat=mysql_real_escape_string($_GET['id']);
$det=mysql_query("select * from obat where id='$id_obat'")or die(mysql_error());
while($d=mysql_fetch_array($det)){
?>					
	<form action="update.php" method="post">
		<table class="table">
			<tr>
				<td></td>
				<td><input type="hidden" name="id" value="<?php echo $d['id'] ?>"></td>
			</tr>
			<tr>
				<td>Nama Obat</td>
				<td><input type="text" class="form-control" name="nama" value="<?php echo $d['nama'] ?>"></td>
			</tr>
			<tr>
				<td>Kelas Terapi</td>
				<td><input type="text" class="form-control" name="kelas" value="<?php echo $d['kelas'] ?>"></td>
			</tr>
			<tr>
				<td>Satuan</td>
				<td><input type="text" class="form-control" name="satuan" value="<?php echo $d['satuan'] ?>"></td>
			</tr>
			<tr>
				<td>Penyedia</td>
				<td><input type="text" class="form-control" name="penyedia" value="<?php echo $d['penyedia'] ?>"></td>
			</tr>
			<tr>
				<td>Stok Awal</td>
				<td><input type="text" class="form-control" name="stok_awal" value="<?php echo $d['stok_awal'] ?>"></td>
			</tr>	
			<tr>
				<td>Penerimaan</td>
				<td><input type="text" class="form-control" name="penerimaan" value="<?php echo $d['penerimaan'] ?>"></td>
			</tr>
			<tr>
				<td>Persediaan</td>
				<td><input type="text" class="form-control" name="persediaan" value="<?php echo $d['persediaan'] ?>"></td>
			</tr>
			<tr>
				<td>Pemakaian</td>
				<td><input type="text" class="form-control" name="pemakaian" value="<?php echo $d['pemakaian'] ?>"></td>
			</tr>
			<tr>
				<td>Sisa</td>
				<td><input type="text" class="form-control" name="sisa" value="<?php echo $d['sisa'] ?>"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" class="btn btn-info" value="Simpan"></td>
			</tr>
		</table>
	</form>
	<?php 
}
?>
<?php include 'footer.php'; ?>
<?php 
include 'header.php';
?>

<h3><span class="glyphicon glyphicon-briefcase"></span>  Edit Obat Keluar</h3>
<a class="btn" href="obat_keluar.php"><span class="glyphicon glyphicon-arrow-left"></span>  Kembali</a>

<?php
$id_obat=mysql_real_escape_string($_GET['id']);

$det=mysql_query("select * from obat_keluar where id='$id_obat'")or die(mysql_error());
while($d=mysql_fetch_array($det)){
	?>					
	<form action="update_keluar.php" method="post">
		<table class="table">
			<tr>
				<td></td>
				<td><input type="hidden" name="id" value="<?php echo $d['id'] ?>"></td>
			</tr>

			<tr>
				<td>Tanggal</td>
				<td><input name="tgl" type="text" class="form-control" id="tgl" autocomplete="off" value="<?php echo $d['tanggal'] ?>"></td>
			</tr>
			<tr>
				<td>Nama</td>
				<td>
					<select class="form-control" name="nama">
						<?php 
						$obat=mysql_query("select * from obat");
						while($b=mysql_fetch_array($obat)){
							?>	
							<option <?php if($d['nama']==$b['nama']){echo "selected"; } ?> value="<?php echo $b['nama']; ?>"><?php echo $b['nama'] ?></option>
							<?php 
						}
						?>
					</select>
				</td>
			</tr>	
			<tr>
				<td>Jumlah</td>
				<td><input type="text" class="form-control" name="jumlah" value="<?php echo $d['jumlah'] ?>"></td>
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
 <script type="text/javascript">
        $(document).ready(function(){

            $('#tgl').datepicker({dateFormat: 'yy/mm/dd'});

        });
    </script>
<?php 
include 'footer.php';

?>
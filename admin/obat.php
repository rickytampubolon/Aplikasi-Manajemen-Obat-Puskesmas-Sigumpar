<?php include 'header.php'; ?>

<h3><span class="glyphicon glyphicon-briefcase"></span>  Data Obat</h3>
<button style="margin-bottom:20px" data-toggle="modal" data-target="#myModal" class="btn btn-info col-md-2"><span class="glyphicon glyphicon-plus"></span>Tambah Obat</button>
<br/>
<br/>

<?php 
$periksa=mysql_query("select * from obat where sisa <=3");
while($q=mysql_fetch_array($periksa)){	
	if($q['jumlah']<=3){	
		?>	
		<script>
			$(document).ready(function(){
				$('#pesan_sedia').css("color","red");
				$('#pesan_sedia').append("<span class='glyphicon glyphicon-asterisk'></span>");
			});
		</script>
		<?php
		echo "<div style='padding:5px' class='alert alert-warning'><span class='glyphicon glyphicon-info-sign'></span> Stok  <a style='color:red'>". $q['nama']."</a> yang tersisa sudah kurang dari 3 . silahkan pesan lagi !!</div>";	
	}
}
?>
<?php 
$per_hal=10;
$jumlah_record=mysql_query("SELECT COUNT(*) from obat");
$jum=mysql_result($jumlah_record, 0);
$halaman=ceil($jum / $per_hal);
$page = (isset($_GET['page'])) ? (int)$_GET['page'] : 1;
$start = ($page - 1) * $per_hal;
?>
<div class="col-md-12">
	<table class="col-md-2">
		<tr>
			<td>Jumlah Record</td>		
			<td><?php echo $jum; ?></td>
		</tr>
		<tr>
			<td>Jumlah Halaman</td>	
			<td><?php echo $halaman; ?></td>
		</tr>
	</table>
	<a style="margin-bottom:10px" href="lap_obat.php" target="_blank" class="btn btn-default pull-right"><span class='glyphicon glyphicon-print'></span>  Cetak</a>
</div>
<form action="cari_act.php" method="get">
	<div class="input-group col-md-5 col-md-offset-7">
		<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-search"></span></span>
		<input type="text" class="form-control" placeholder="Cari obat di sini .." aria-describedby="basic-addon1" name="cari">	
	</div>
</form>
<br/>
<table class="table table-hover">
	<tr>
		<th class="col-md-1">No</th>
		<th class="col-md-2.5">Nama Obat</th>
		<th class="col-md-2">Kelas Terapi</th>
		<th class="col-md-2">Satuan</th>
		<th class="col-md-2">Persediaan</th>
		<!-- <th class="col-md-1">Sisa</th>		 -->
		<th class="col-md-1.5">Opsi</th>
	</tr>
	<?php 
	if(isset($_GET['cari'])){
		$cari=mysql_real_escape_string($_GET['cari']);
		$obat=mysql_query("select * from obat where nama like '$cari' or kelas like '$cari'");
	}else{
		$obat=mysql_query("select * from obat limit $start, $per_hal");
	}
	$no=1;
	
	while($b=mysql_fetch_array($obat)){

		?>
		<tr>
			<td><?php echo $no++ ?></td>
			<td><?php echo $b['nama'] ?></td>
			<td><?php echo $b['kelas'] ?></td>
			<td><?php echo $b['satuan'] ?></td>			
			<td><?php echo $b['persediaan'] ?></td>
			<td>
				<a href="det_obat.php?id=<?php echo $b['id']; ?>" class="btn btn-info">Detail</a>
				<a href="edit.php?id=<?php echo $b['id']; ?>" class="btn btn-warning">Edit</a>
				<a onclick="if(confirm('Apakah anda yakin ingin menghapus data ini ??')){ location.href='hapus.php?id=<?php echo $b['id']; ?>' }" class="btn btn-danger">Hapus</a>
			</td>
		</tr>		
		<?php 
	}
	?>
	
</table>
<ul class="pagination">			
			<?php 
			for($x=1;$x<=$halaman;$x++){
				?>
				<li><a href="?page=<?php echo $x ?>"><?php echo $x ?></a></li>
				<?php
			}
			?>						
		</ul>
<!-- modal input -->
<div id="myModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Tambah Obat Baru</h4>
			</div>
			<div class="modal-body">
				<form action="tmb_obat_act.php" method="post">
					<div class="form-group">
						<label>Nama Generic</label>
						<input name="nama" type="text" class="form-control" placeholder="Nama Generic ..">
					</div>
					<div class="form-group">
						<label>Kelas Terapi</label>
						<input name="kelas" type="text" class="form-control" placeholder="Kelas Terapi ..">
					</div>
					<div class="form-group">
						<label>Satuan</label>
						<input name="satuan" type="text" class="form-control" placeholder="Satuan ..">
					</div>
					<div class="form-group">
						<label>Penyedia</label>
						<input name="penyedia" type="text" class="form-control" placeholder="Penyedia ..">
					</div>
					<div class="form-group">
						<label>Stok Awal</label>
						<input name="stok_awal" type="text" class="form-control" placeholder="Stok Awal ..">
					</div>
					
					<div class="form-group">
						<label>Penerimaan</label>
						<input name="penerimaan" type="text" class="form-control" placeholder="Penerimaan ..">
					</div>	
					<div class="form-group">
						<label>Persediaan</label>
						<input name="persediaan" type="text" class="form-control" placeholder="Persediaan ..">
					</div>	
					<div class="form-group">
						<label>Pemakaian</label>
						<input name="pemakaian" type="text" class="form-control" placeholder="Pemakaian ..">
					</div>	
					<div class="form-group">
						<label>Sisa Stok</label>
						<input name="sisa" type="text" class="form-control" placeholder="Sisa Stok ..">
					</div>	

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
					<input type="submit" class="btn btn-primary" value="Simpan">
				</div>
			</form>
		</div>
	</div>
</div>



<?php 
include 'footer.php';

?>
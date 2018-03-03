<?php
include 'config.php';
require('../assets/pdf/fpdf.php');

$pdf = new FPDF("L","cm","A4");

$pdf->SetMargins(2,1,1);
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFont('Times','B',11);
$pdf->Image('../logo/gbr1.png',1,1,2,2);
$pdf->SetX(4);            
$pdf->MultiCell(19.5,0.5,'Aplikasi Managemen Obat Puskesmas Sigumpar',0,'L');
$pdf->SetX(4);
$pdf->MultiCell(19.5,0.5,'Jl Lintas Sumatera Sigumpar Kab Toba Samosir Sumatera Utara   ',0,'L');    
$pdf->SetFont('Arial','B',10);
$pdf->SetX(4);
$pdf->MultiCell(19.5,0.5,'Telepon :  081376890055',0,'L');
$pdf->SetX(4);
$pdf->MultiCell(19.5,0.5,'website : www.puskesmas-sigumpar.com    email : puskesmassigumpar@gmail.com',0,'L');
$pdf->Line(1,3.1,28.5,3.1);
$pdf->SetLineWidth(0.1);      
$pdf->Line(1,3.2,28.5,3.2);   
$pdf->SetLineWidth(0);
$pdf->ln(1);
$pdf->SetFont('Arial','B',14);
$pdf->Cell(25.5,0.7,"Laporan Data Obat",0,10,'C');
$pdf->ln(1);
$pdf->SetFont('Arial','B',10);
$pdf->Cell(5,0.7,"Di cetak pada : ".date("D-d/m/Y"),0,0,'C');
$pdf->ln(1);
$pdf->SetFont('Arial','B',10);
$pdf->Cell(1, 0.8, 'NO', 1, 0, 'C');
$pdf->Cell(6, 0.8, 'Nama Obat', 1, 0, 'C');
$pdf->Cell(2.5, 0.8, 'Kelas Terapi', 1, 0, 'C');
$pdf->Cell(2, 0.8, 'Satuan', 1, 0, 'C');
$pdf->Cell(5, 0.8, 'Penyedia', 1, 0, 'C');
$pdf->Cell(3, 0.8, 'Penerimaan', 1, 0, 'C');
$pdf->Cell(3, 0.8, 'Persediaan', 1, 0, 'C');
$pdf->Cell(3, 0.8, 'Pemakaian', 1, 0, 'C');
$pdf->Cell(2, 0.8, 'Sisa', 1, 1, 'C');
$pdf->SetFont('Arial','',10);
$no=1;
$query=mysql_query("select * from obat");
while($lihat=mysql_fetch_array($query)){
	$pdf->Cell(1, 0.8, $no , 1, 0, 'C');
	$pdf->Cell(6, 0.8, $lihat['nama'],1, 0, 'C');
	$pdf->Cell(2.5, 0.8, $lihat['kelas'], 1, 0,'C');
	$pdf->Cell(2, 0.8, $lihat['satuan'],1, 0, 'C');
	$pdf->Cell(5, 0.8, $lihat['penyedia'], 1, 0,'C');
	$pdf->Cell(3, 0.8, $lihat['penerimaan'],1, 0, 'C');
	$pdf->Cell(3, 0.8, $lihat['persediaan'],1, 0, 'C');
	$pdf->Cell(3, 0.8, $lihat['pemakaian'],1, 0, 'C');
	$pdf->Cell(2, 0.8, $lihat['sisa'], 1, 1,'C');

	$no++;
}

$pdf->Output("laporan_buku.pdf","I");

?>


<?php
 
 $id_jenis = $_GET['id'];
 $sql = $koneksi->query("delete from jenis_barang where id = '$id_jenis'");

 if ($sql) {
 
 ?>
 
 
	<script type="text/javascript">
	window.location.href="?page=jenisbarang";
	</script>
	
 <?php
 
 }
 
 ?>
 <?php
 
 $id = $_GET['id'];
 $sql = $koneksi->query("delete from satuan where id = '$id'");

 if ($sql) {
 
 ?>
 
 
	<script type="text/javascript">
	window.location.href="?page=satuanbarang";
	</script>
	
 <?php
 
 }
 
 ?>
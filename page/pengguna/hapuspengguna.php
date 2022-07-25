 <?php
 
 $id = $_GET['id'];
 $sql = $koneksi->query("delete from users where id = '$id'");

 if ($sql) {
 
 ?>
 
 
	<script type="text/javascript">
	window.location.href="?page=pengguna";
	</script>
	
 <?php
 
 }
 
 ?>
  <div class="container-fluid">

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Tambah Satuan Barang</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
							
							
							<div class="body">
							
							<form method="POST" enctype="multipart/form-data">
							

							<label for="">Satuan Barang</label>
                            <div class="form-group">
                               <div class="form-line">
                                <input type="text" name="satuan" class="form-control" required/>	 
							</div>
                            </div>
					
							
						
								<input type="submit" name="simpan" value="Simpan" class="btn btn-primary">
								<input type="button" name="kembali" value="Kembali" class="btn btn-info" onclick="window.location = '?page=satuanbarang';">
							</form>
						
							
							
							
							<?php
							
							if (isset($_POST['simpan'])) {
								$satuan= $_POST['satuan'];
								
								
					
			
								
								$sql = $koneksi->query("insert into satuan (satuan) values('$satuan')");
								
								if ($sql) {
									?>
									
										<script type="text/javascript">
										window.location.href="?page=satuanbarang";
										</script>
										
										<?php
								}
								}
							
							
							?>
										
										
										
								
								
								
								
								

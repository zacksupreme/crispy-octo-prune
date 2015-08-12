<div class="portlet box blue-hoki">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-gift"></i>Import Data Pengujian
		</div>
	</div>
	<div class="portlet-body form">
		<!-- BEGIN FORM-->
		
		<form action="<?php echo current_url()?>" class="form-horizontal form-bordered" method="POST" enctype="multipart/form-data">
			<div class="form-body">
				<?php if($error==true){ ?>
				<div class="form-group">
					<div class="col-md-12">
						<div class="alert alert-danger">
							<?php echo $this->upload->display_errors();?>
						</div>
					</div>
				</div>
				<?php } ?>
				<div class="form-group">
					<label class="control-label col-md-3">File</label>
					<div class="col-md-9">
						<div class="fileinput fileinput-new" data-provides="fileinput">
							<span class="btn default btn-file">
								<span class="fileinput-new">
									Select file </span>
									<span class="fileinput-exists">
										Change </span>
										<input type="hidden"><input type="file" name="file_input">
									</span>
									<span class="fileinput-filename">
									</span>
									&nbsp; <a href="javascript:;" class="close fileinput-exists" data-dismiss="fileinput">
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="form-actions">
					<div class="row">
						<div class="col-md-offset-3 col-md-9">
							<button type="submit" class="btn purple"><i class="fa fa-check"></i> Submit</button>
						</div>
					</div>
				</div>
			</form>
			<!-- END FORM-->
			<br />
			<?php 
			if(!empty($data_uji)){ 
				?>
				<div class="table-scrollable">
					<table class="table table-striped table-bordered table-advance table-hover">
						<thead>
							<tr>
								<th>
									#
								</th>
								<th>
									<i class="fa fa-calendar"></i> Date
								</th>
								<th>
									Operation
								</th>
							</tr>
						</thead>
						<tbody>
							<?php $no=1;foreach($data_uji as $d){?>
							<tr>	
								<td>
									<?php echo $no;?>
								</td>
								<td>
									<?php echo date('m/d/Y H:i:s',strtotime($d->data_uji_tanggal))?>
								</td>
								
								<td>
									<a href="<?php echo site_url('peramalan/detail/'.$this->encrypt->safe_b64encode(date('m/d/Y H:i:s',strtotime($d->data_uji_tanggal))))?>" class="btn btn-primary btn-sm">
										Detail
									</a>
									<a href="<?php echo site_url('peramalan/grafik/'.$this->encrypt->safe_b64encode(date('m/d/Y H:i:s',strtotime($d->data_uji_tanggal))))?>" class="btn btn-warning btn-sm">
										<i class="icon-bar-chart"></i>Grafik Perbandingan
									</a>
									<a href="#modal_delete" role="button" class="btn red btn-sm" data-toggle="modal">
										<i class="fa fa-remove"></i> Delete 
									</a>

									</td>
								</tr>
								<?php $no++;} ?>
							</tbody>
						</table>
					</div>
					<?php 
				}
				?>

			</div>
		</div>

		<div id="modal_delete" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel3" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
						<h4 class="modal-title">Konfirmasi Penghapusan</h4>
					</div>
					<div class="modal-body">
						<p>
							Anda yakin?
						</p>
					</div>
					<div class="modal-footer">
						<button class="btn default" data-dismiss="modal" aria-hidden="true">Close</button>
						<a href="<?php echo site_url('peramalan/delete/'.$this->encrypt->safe_b64encode(date('m/d/Y H:i:s',strtotime($d->data_uji_tanggal))))?>" class="btn btn-danger">Delete</a>
					</div>
				</div>
			</div>
		</div>
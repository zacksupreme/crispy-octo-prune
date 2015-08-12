<div class="portlet box blue-hoki">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-gift"></i>Import Data Training
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
			if(!empty($gold_history)){ 
				?>
				<div class="table-scrollable">
					<table class="table table-striped table-bordered table-advance table-hover">
						<thead>
							<tr>
								<th>
									<i class="fa fa-calendar"></i> Date
								</th>
								<th class="hidden-xs">
									<i class="fa fa-dollar"></i> Price
								</th>
							</tr>
						</thead>
						<tbody>
							<?php foreach($gold_history as $g){?>
							<tr>	
								<td>
									<?php echo date('m/d/Y',strtotime($g->gold_history_date))?>
								</td>
								<td>
									USD <?php echo number_format($g->gold_history_close,2,',','.')?>
								</td>
							</tr>
							<?php } ?>
						</tbody>
					</table>
				</div>
				<?php 
			}
		?>
	</div>
</div>
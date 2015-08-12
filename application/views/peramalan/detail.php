<div class="portlet box blue-hoki">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-gift"></i>Data Uji Tanggal <?php echo date('Y-m-d H:i:s',strtotime($date));?>
		</div>
	</div>
	<div class="portlet-body form">
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
									Tanggal
								</th>
								<th>
									Data Pengujian
								</th>
								<th>
									Nilai Ramalan
								</th>
								<th>
									Nilai Error
								</th>
							</tr>
						</thead>
						<tbody>
							<?php 
							$total_data = count($data_uji);
							$array_mse = array();
							$array_mad = array();
							$array_mape = array();
							$no=1;
							foreach($data_uji as $d){
								if($d->data_uji_ramalan!='-'){
									array_push($array_mad, $d->data_uji_error);
									array_push($array_mse, pow($d->data_uji_error,2));
									array_push($array_mape, ($d->data_uji_error/$d->data_uji_price)*100);
								}
								?>
							<tr>	
								<td>
									<?php echo $no;?>
								</td>
								<td>
									<?php echo date('m/d/Y',strtotime($d->data_uji_date))?>
								</td>
								<td>
									<?php echo $d->data_uji_price?>
								</td>
								<td>
									<?php echo $d->data_uji_ramalan?>
								</td>
								<td>
									<?php echo $d->data_uji_error?>
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
<div class="row">
	<div class="col-lg-4 col-md-3 col-sm-6 col-xs-12">
		<div class="dashboard-stat blue-madison">
			<div class="visual">
				<i class="fa fa-comments"></i>
			</div>
			<div class="details">
				<div class="number">
					 <?php echo round(array_sum($array_mad)/$total_data,2); ?>
				</div>
				<div class="desc">
					 MAD
				</div>
			</div>
			
		</div>
	</div>
	<div class="col-lg-4 col-md-3 col-sm-6 col-xs-12">
		<div class="dashboard-stat red-intense">
			<div class="visual">
				<i class="fa fa-bar-chart-o"></i>
			</div>
			<div class="details">
				<div class="number">
					 <?php echo round(array_sum($array_mse)/$total_data,2); ?>
				</div>
				<div class="desc">
					 MSE
				</div>
			</div>
			
		</div>
	</div>
	<div class="col-lg-4 col-md-3 col-sm-6 col-xs-12">
		<div class="dashboard-stat green-haze">
			<div class="visual">
				<i class="fa fa-shopping-cart"></i>
			</div>
			<div class="details">
				<div class="number">
					 <?php echo round(array_sum($array_mape)/$total_data,2); ?>
				</div>
				<div class="desc">
					 MAPE
				</div>
			</div>
			
		</div>
	</div>
</div>
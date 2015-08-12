<div class="portlet box red">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-list"></i>Grafik Data Peramalan
		</div>
		<div class="tools">
			<a title="" data-original-title="" href="javascript:;" class="collapse">
			</a>
			<a title="" data-original-title="" href="#portlet-config" data-toggle="modal" class="config">
			</a>
			<a title="" data-original-title="" href="javascript:;" class="reload">
			</a>
			<a title="" data-original-title="" href="javascript:;" class="remove">
			</a>
		</div>
	</div>
	<div class="portlet-body">

		<div id="grafikemas" />
	</div>
</div>

<!-- HIGHCHART PLUGINS -->
<script src="<?php echo base_url().'assets'?>/global/plugins/highcharts/highcharts.js"></script>
<script src="<?php echo base_url().'assets'?>/global/plugins/highcharts/exporting.js"></script>
<!-- HIGHCHART PLUGINS -->


<script>


	jQuery(document).ready(function() {   

		$(function () {
			$('#grafikemas').highcharts({
				title: {
					text: 'Peramalan Emas dengan Metode Fuzzy Time Series Cheng',
            x: -20 //center
        },
        subtitle: {
        	text: 'Source: gold.org',
        	x: -20
        },
        xAxis: {
        	categories:             
                <?php echo '['?>
                <?php foreach($data_peramalan as $key ){?>
                <?php echo "'".date("M",strtotime($key->data_uji_date))."',"?>
                <?php } ?>
                <?php echo ']'?>
        },
        yAxis: {
        	title: {
        		text: ''
        	},
        	plotLines: [{
        		value: 0,
        		width: 1,
        		color: '#808080'
        	}]
        },
        tooltip: {
        	valueSuffix: ''
        },
        legend: {
        	layout: 'vertical',
        	align: 'right',
        	verticalAlign: 'middle',
        	borderWidth: 0
        },
        series: [{
        	name: 'Data Aktual',
        	color : '#89C4F4',
            data :
        	<?php echo '['?>
            <?php unset($data_peramalan[0])?>
        	<?php foreach($data_peramalan as $key	){?>
                <?php echo $key->data_uji_price;?>
                <?php echo ','?>
                <?php } ?>
                <?php echo ']'?>
        	},{
            name: 'Data Peramalan',
            color : 'red',
            data :
            <?php echo '['?>
            <?php foreach($data_peramalan as $key   ){?>
                <?php echo $key->data_uji_ramalan;?>
                <?php echo ','?>
                <?php } ?>
                <?php echo ']'?>
            }
	        ]
	    });
});
});
</script>
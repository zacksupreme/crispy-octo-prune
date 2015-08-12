<div class="portlet box red">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-list"></i>Tahap 1 - Tabel Jumlah Data pada Setiap Interval
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
                <?php foreach($gold_history as $key ){?>
                <?php echo "'".date("M",strtotime($key->gold_history_date))."',"?>
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
        	data :
        	<?php echo '['?>
        	<?php foreach($gold_history as $key	){?>
        		<?php echo $key->gold_history_close.','?>
        		<?php } ?>
        		<?php echo ']'?>
        	}

            // data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6, 9, 8, 7]
	        // , {
	        //     name: 'New York',
	        //     data: [-0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5]
	        // }, {
	        //     name: 'Berlin',
	        //     data: [-0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0]
	        // }, {
	        //     name: 'London',
	        //     data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
	        // }
	        ]
	    });
});
});
</script>
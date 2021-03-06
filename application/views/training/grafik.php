<div class="portlet box red">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-list"></i>Universe of Discourse
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
	        ]
	    });
});
});
</script>
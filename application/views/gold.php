<?php 
	function find_linguistik_val($data_interval,$search_val){
		foreach($data_interval as $key=>$val){
			if($key==0){
				if($search_val>=$val['min'] && $search_val<=$val['max']){
					return $val['linguistik'];
				}
			}else{
				if($search_val>$val['min'] && $search_val<=$val['max']){
					return $val['linguistik'];
				}
			}
		}
	}
?>
<p> Data Test : <b><?php echo $test?></b></p>
<br /><span><strong>Tabel Jumlah Data pada Setiap Interval</strong></span>
<table border=1> 
	<tr>
		<td>Linguistik Value</td>
		<td>Linguistik Interval</td>
		<td>Occurence</td>
	</tr>
	<?php foreach($pre_data_interval as $key=>$val){?>
		<tr>
			<td>A<?php echo $key+1?></td>
			<td><?php echo $val['min']."-".$val['max']?></td>
			<td><?php echo $val['occ']?></td>
		</tr> 
	<?php } ?>
</table>
<br /><span><strong>Tabel Jumlah Data setelah Proses Pembagian</strong></span>
<table border=1> 
	<tr>
		<td>Linguistik Value</td>
		<td>Linguistik Interval</td>
		<td>Dividing condition</td>
		<td>Occurence</td>
	</tr>
	<?php foreach($data_interval as $key=>$val){?>
		<tr>
			<td>A<?php echo $key+1?></td>
			<td><?php echo $val['min']."-".$val['max']?></td>
			<td><?php echo $val['condition']?></td>
			<td><?php echo $val['occ']?></td>
		</tr> 
	<?php } ?>
</table>
<br /><span><strong>Tabel Fuzzifikasi</strong></span>
<table border=1>
	<tr>
		<td>No</td>
		<td>Tanggal</td>
		<td>Close</td>
		<td>Linguistik Value</td>
	</tr>
	<?php 
	$no=1;
	$array_linguistik = array();
	$array_linguistik_text = array();
	foreach($history as $h){
		$linguistik_val = find_linguistik_val($data_interval,$h->close);
		array_push($array_linguistik,$linguistik_val);
	?>
		<tr>
			<td><?php echo $no?></td>
			<td><?php echo $h->date?></td>
			<td><?php echo $h->close?></td>
			<td><?php echo $linguistik_val;?></td>
		</tr>
	<?php
	$no++; 
	} ?>
</table>
<hr />
<?php 
	$array_relation = array();
	foreach($array_linguistik as $key=>$val){
		if(isset($array_linguistik[$key+1])){
			if(isset($array_relation[$array_linguistik[$key+1].'-'.$array_linguistik[$key]])){
				$array_relation[$array_linguistik[$key+1].'-'.$array_linguistik[$key]] +=1;
			}else{
				$array_relation[$array_linguistik[$key+1].'-'.$array_linguistik[$key]] = 1;
			}
		}
	}
	?>
<br /><span><strong>Tabel Bobot pada Kelompok Relasi Fuzzy Logic</strong></span>
<table border=1>
	<tr>
		<td>X(t-1)</td>
		<?php 
			$total_linguistik = count($data_interval);
			for($i=1;$i<=$total_linguistik;$i++){
				?>
				<td>A<?php echo $i?></td>
				<?php 
			}
		?>
	</tr>
	<?php
		$array_total_value_row = array();
		for ($i=1;$i<=$total_linguistik;$i++) {
			$array_total_value_row[$i] = 0;
			echo "<tr>";
			echo "<td>A".$i."</td>";
			for($j=1;$j<=$total_linguistik;$j++){
				$count_1 = 0;
				$count_2 = 0;
				if(isset($array_relation['A'.$i.'-'.'A'.$j])){
					$count_1 = $array_relation['A'.$i.'-'.'A'.$j];
				}else if(isset($array_relation['A'.$j.'-'.'A'.$i])){
					$count_2 = $array_relation['A'.$j.'-'.'A'.$i];
				}
				$array_total_value_row[$i]+= $count_1+$count_2;
				echo "<td>".($count_1+$count_2)."</td>";
			}
			echo "</tr>";
		}
	?>
</table>
<br /><span><strong>Tabel Bobot Ternormalisasi</strong></span>
<table border=1>
	<tr>
		<td>X(t-1)</td>
		<?php 
			$total_linguistik = count($data_interval);
			for($i=1;$i<=$total_linguistik;$i++){
				?>
				<td>A<?php echo $i?></td>
				<?php 
			}
		?>
	</tr>
	<?php
		for ($i=1;$i<=$total_linguistik;$i++) {
			echo "<tr>";
			echo "<td>A".$i."</td>";
			for($j=1;$j<=$total_linguistik;$j++){
				$count_1 = 0;
				$count_2 = 0;
				if(isset($array_relation['A'.$i.'-'.'A'.$j])){
					$count_1 = $array_relation['A'.$i.'-'.'A'.$j];
				}else if(isset($array_relation['A'.$j.'-'.'A'.$i])){
					$count_2 = $array_relation['A'.$j.'-'.'A'.$i];
				}
				if($count_1+$count_2!=0){
					echo "<td data-hitung=".(($count_1+$count_2)/$array_total_value_row[$i]).">".($count_1+$count_2)."/".$array_total_value_row[$i]."</td>";
				}else{
					echo "<td>0</td>";
				}
			}
			echo "</tr>";
		}
	?>
</table>
<?php 
	$index = 0;
	foreach($data_interval as $key=>$val){
		if($key==0){
			if($test>=$val['min'] && $test<=$val['max']){
				$index = $key;
			}
		}else{
			if($test>$val['min'] && $test<=$val['max']){
				$index = $key;
			}
		}
	}
	$index +=1;
	$forecasting_value = 0;
	for($i=1;$i<=$total_linguistik;$i++){
		$count_1 = 0;
		$count_2 = 0;
		if(isset($array_relation['A'.$index.'-'.'A'.$i])){
			$count_1 = $array_relation['A'.$index.'-'.'A'.$i];
		}else if(isset($array_relation['A'.$i.'-'.'A'.$index])){
			$count_2 = $array_relation['A'.$i.'-'.'A'.$index];
		}
		$count = $count_1+$count_2;
		$forecasting_value += $test*($count/$array_total_value_row[$index]);

	}
?>
<br />
<p>Hasil Peramalan : <strong><?php echo $forecasting_value?></strong></p>

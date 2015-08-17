<?php 
class Training extends CI_Controller{

	public $folder = 'training';

	public function __construct(){
		parent::__construct();
		$this->load->library('upload');
	}

	public function index(){
		redirect('training/import');
	}

	public function import(){
		$data['error'] = false;
		if(!empty($_FILES)){
			$config['upload_path'] = './files/';
			$config['allowed_types'] = 'xls';
			$config['max_size']	= '1000000';
			$config['overwrite'] = true;
			$this->upload->initialize($config);
			if($this->upload->do_upload('file_input')){
				$data = $this->upload->data();
				$this->db->query('delete from gold_history');
				$this->db->query('delete from data_interval');
				$this->db->query('delete from fuzzyfikasi');
				$this->load->helper('excel');
		    	$file = $data['file_name'];
		        // $file = 'template.xls';
		        $file = './files/'.$file;
		        $objReader = read_excel();
		        $objPHPExcel = $objReader->load($file); //$file --> your filepath and filename
		        $objWorksheet = $objPHPExcel->getActiveSheet();
		        $highestRow = $objWorksheet->getHighestRow(); // e.g. 10
		        $highestColumn = $objWorksheet->getHighestColumn(); // e.g 'F'
		        $highestColumnIndex = PHPExcel_Cell::columnIndexFromString($highestColumn); // e.g. 5
		        for ($row = 2; $row <= $highestRow; ++$row) {
		        	$array_data = array(
		        		'gold_history_date'=>date('Y-m-d',strtotime(PHPExcel_Style_NumberFormat::toFormattedString($objWorksheet->getCellByColumnAndRow(0, $row)->getValue(), 'm/d/Y'))),
		        		'gold_history_close'=>round($objWorksheet->getCellByColumnAndRow(1, $row)->getValue(),2),
		        	);
		        	$this->db->insert('gold_history',$array_data);
		        }
		        $data['gold_history'] = $this->db->query("select * from gold_history order by gold_history_date asc")->result();
	        	$data['min_max'] = $this->db->query("select min(gold_history_close) as min, max(gold_history_close) as max from gold_history limit 1")->row();
	        	$min = floor($data['min_max']->min);
		        $max = ceil($data['min_max']->max);
				$diff = $max-$min;
				$div = $diff/7;
				$temp = 0;
				$array_interval = array();
				$array_occ = array();
				for($i=0;$i<7;$i++){
				    if($temp==0){
				        $temp = $min;
				    }else{
				        $temp+=$div;
				    }
				    $min_d = $div/2;
				    $temp_1 = $temp;
				    if($i==6){
				        $temp_2 = $max;
				    }else{
				        $temp_2 = $temp_1+$div;
				    }
				    $array_interval[$i]['min'] = round($temp_1);
				    $array_interval[$i]['max'] = round($temp_2);
				}
				foreach($array_interval as $key=>$val){
					if($key == 0){
						$count = $this->db->query("select count(gold_history_id) as count_result from gold_history where  gold_history_close>=".$val['min']." and gold_history_close<=".$val['max']." limit 1")->row()->count_result;
					}else{
						$count = $this->db->query("select count(gold_history_id) as count_result from gold_history where gold_history_close>".$val['min']." and gold_history_close<=".$val['max']." limit 1")->row()->count_result;
					}
					$array_occ[$key] = $count;
					$array_interval[$key]['occ'] = $count;
					$array_data = array(
				        	'pre_data_interval_linguistik_value'=>'A'.($key+1),
				        	'pre_data_interval_min'=>$val['min'],
				        	'pre_data_interval_max'=>$val['max'],
				        	'pre_data_interval_occurence'=>$count,
				        );
				        $this->db->insert('pre_data_interval',$array_data);
				}
				$data['pre_data_interval'] = $array_interval;
				$sum_occ = array_sum($array_occ);
				$avg_occ =  floor($sum_occ/count($array_interval));
				$max_interval = array();
				foreach($array_occ as $key=>$val){
					if($val>$avg_occ){
						$max_interval[$key] = $val;
					}
				}
				$n_index = 0;
				$new_array_interval = array();
				$array_data_linguistik = array();
				for($i=0;$i<7;$i++){
				    if(isset($max_interval[$i])){
				        $diff = $array_interval[$i]['max']-$array_interval[$i]['min'];
				        $div = round($diff/2);
				        $temp_1 = $array_interval[$i]['min'];
				        $temp_2 = $array_interval[$i]['min']+$div;
				        $temp_11 = $temp_2;
				        $temp_12 = $array_interval[$i]['max'];
				        $new_array_interval[$n_index]['min'] = $temp_1;
				        $new_array_interval[$n_index]['max'] = $temp_2;
				        if($n_index == 0){
				        	$count1 = $this->db->query("select count(gold_history_id) as count_result from gold_history where  gold_history_close>=".$new_array_interval[$n_index]['min']." and gold_history_close<=".$new_array_interval[$n_index]['max']." limit 1")->row()->count_result;
				        }else{
				        	$count1 = $this->db->query("select count(gold_history_id) as count_result from gold_history where  gold_history_close>".$new_array_interval[$n_index]['min']." and gold_history_close<=".$new_array_interval[$n_index]['max']." limit 1")->row()->count_result;
				        }
				        $new_array_interval[$n_index]['occ'] = $count1;
				        $new_array_interval[$n_index]['linguistik'] = 'A'.($n_index+1);
				        $new_array_interval[$n_index]['condition'] = 'Second';
				        $array_data_1 = array(
				        	'data_interval_linguistik_value'=>$new_array_interval[$n_index]['linguistik'],
				        	'data_interval_min'=>$new_array_interval[$n_index]['min'],
				        	'data_interval_max'=>$new_array_interval[$n_index]['max'],
				        	'data_interval_dividing_condition'=>$new_array_interval[$n_index]['condition'],
				        	'data_interval_occurence'=>$new_array_interval[$n_index]['occ'],
				        );
				        $this->db->insert('data_interval',$array_data_1);

				        $new_array_interval[$n_index+1]['min'] = $temp_11;
				        $new_array_interval[$n_index+1]['max'] = $temp_12;
				        $count2 = $this->db->query("select count(gold_history_id) as count_result from gold_history where  gold_history_close>".$new_array_interval[$n_index+1]['min']." and gold_history_close<=".$new_array_interval[$n_index+1]['max']." limit 1")->row()->count_result;
				        $new_array_interval[$n_index+1]['occ'] = $count2;
				        $new_array_interval[$n_index+1]['linguistik'] = 'A'.($n_index+2);
				        $new_array_interval[$n_index+1]['condition'] = 'Second';
				        $array_data_2 = array(
				        	'data_interval_linguistik_value'=>$new_array_interval[$n_index+1]['linguistik'],
				        	'data_interval_min'=>$new_array_interval[$n_index+1]['min'],
				        	'data_interval_max'=>$new_array_interval[$n_index+1]['max'],
				        	'data_interval_dividing_condition'=>$new_array_interval[$n_index+1]['condition'],
				        	'data_interval_occurence'=>$new_array_interval[$n_index+1]['occ'],
				        );
				        $this->db->insert('data_interval',$array_data_2);
				        $n_index+=2;
				    }else{
				        $new_array_interval[$n_index]['min'] = $array_interval[$i]['min'];
				        $new_array_interval[$n_index]['max'] = $array_interval[$i]['max'];
				        if($n_index == 0){
				        	$count1 = $this->db->query("select count(gold_history_id) as count_result from gold_history where  gold_history_close>=".$new_array_interval[$n_index]['min']." and gold_history_close<=".$new_array_interval[$n_index]['max']." limit 1")->row()->count_result;
				        }else{
				        	$count1 = $this->db->query("select count(gold_history_id) as count_result from gold_history where  gold_history_close>".$new_array_interval[$n_index]['min']." and gold_history_close<=".$new_array_interval[$n_index]['max']." limit 1")->row()->count_result;
				        }
				        $new_array_interval[$n_index]['occ'] = $count1;
				        $new_array_interval[$n_index]['linguistik'] = 'A'.($n_index+1);
				        $new_array_interval[$n_index]['condition'] = 'First';
				        $array_data_1 = array(
				        	'data_interval_linguistik_value'=>$new_array_interval[$n_index]['linguistik'],
				        	'data_interval_min'=>$new_array_interval[$n_index]['min'],
				        	'data_interval_max'=>$new_array_interval[$n_index]['max'],
				        	'data_interval_dividing_condition'=>$new_array_interval[$n_index]['condition'],
				        	'data_interval_occurence'=>$new_array_interval[$n_index]['occ'],
				        );
				        $this->db->insert('data_interval',$array_data_1);
				        $n_index++;
				    }
				}

				foreach($data['gold_history'] as $h){
					$linguistik_val = $this->find_linguistik_val($new_array_interval,$h->gold_history_close);
					$array_data = array(
						'fuzzyfikasi_date'=>$h->gold_history_date,
						'fuzzyfikasi_price'=>$h->gold_history_close,
						'fuzzyfikasi_linguistik_value'=>$linguistik_val,
					);
					$this->db->insert('fuzzyfikasi',$array_data);
				}
				redirect('training/import');
			}else{
				$data['error'] = true;
			}
		}
		$data['gold_history'] = $this->db->query("select * from gold_history order by gold_history_date asc")->result();
		$this->template->load('default',$this->folder.'/import',$data);
	}

	public function proses(){
		$data['history'] = $this->db->query("select gold_history_date as date,gold_history_close as close from gold_history order by gold_history_date Asc")->result();
        $data['min_max'] = $this->db->query("select min(gold_history_close) as min,max(gold_history_close) as max from gold_history")->row();
        $data['test'] = 478.4;
        $min = floor($data['min_max']->min);
		        $max = ceil($data['min_max']->max);
				$diff = $max-$min;
				$div = $diff/7;
				$temp = 0;
				$array_interval = array();
				$array_occ = array();
				for($i=0;$i<7;$i++){
				    if($temp==0){
				        $temp = $min;
				    }else{
				        $temp+=$div;
				    }
				    $min_d = $div/2;
				    $temp_1 = $temp;
				    if($i==6){
				        $temp_2 = $max;
				    }else{
				        $temp_2 = $temp_1+$div;
				    }
				    $array_interval[$i]['min'] = round($temp_1);
				    $array_interval[$i]['max'] = round($temp_2);
		}
		foreach($array_interval as $key=>$val){
			if($key == 0){
				$count = $this->db->query("select count(gold_history_date) as count_result from gold_history where gold_history_close>=".$val['min']." and gold_history_close<=".$val['max']." limit 1")->row()->count_result;
			}else{
				$count = $this->db->query("select count(gold_history_date) as count_result from gold_history where gold_history_close>".$val['min']." and gold_history_close<=".$val['max']." limit 1")->row()->count_result;
			}
			$array_occ[$key] = $count;
			$array_interval[$key]['occ'] = $count;
		}
		$data['pre_data_interval'] = $array_interval;
		$sum_occ = array_sum($array_occ);
		$avg_occ =  floor($sum_occ/count($array_interval));
		$max_interval = array();
		foreach($array_occ as $key=>$val){
			if($val>$avg_occ){
				$max_interval[$key] = $val;
			}
		}
		$n_index = 0;
		$new_array_interval = array();
		$array_data_linguistik = array();
		for($i=0;$i<7;$i++){
		    if(isset($max_interval[$i])){
		        $diff = $array_interval[$i]['max']-$array_interval[$i]['min'];
		        $div = round($diff/2);
		        $temp_1 = $array_interval[$i]['min'];
		        $temp_2 = $array_interval[$i]['min']+$div;
		        $temp_11 = $temp_2;
		        $temp_12 = $array_interval[$i]['max'];
		        $new_array_interval[$n_index]['min'] = $temp_1;
		        $new_array_interval[$n_index]['max'] = $temp_2;
		        if($n_index == 0){
		        	$count1 = $this->db->query("select count(gold_history_date) as count_result from gold_history where  gold_history_close>=".$new_array_interval[$n_index]['min']." and gold_history_close<=".$new_array_interval[$n_index]['max']." limit 1")->row()->count_result;
		        }else{
		        	$count1 = $this->db->query("select count(gold_history_date) as count_result from gold_history where  gold_history_close>".$new_array_interval[$n_index]['min']." and gold_history_close<=".$new_array_interval[$n_index]['max']." limit 1")->row()->count_result;
		        }
		        $new_array_interval[$n_index]['occ'] = $count1;
		        $new_array_interval[$n_index]['linguistik'] = 'A'.($n_index+1);
		        $new_array_interval[$n_index]['condition'] = 'Second';
		        $new_array_interval[$n_index+1]['min'] = $temp_11;
		        $new_array_interval[$n_index+1]['max'] = $temp_12;
		        $count2 = $this->db->query("select count(gold_history_date) as count_result from gold_history where  gold_history_close>".$new_array_interval[$n_index+1]['min']." and gold_history_close<=".$new_array_interval[$n_index+1]['max']." limit 1")->row()->count_result;
		        $new_array_interval[$n_index+1]['occ'] = $count2;
		        $new_array_interval[$n_index+1]['linguistik'] = 'A'.($n_index+2);
		        $new_array_interval[$n_index+1]['condition'] = 'Second';
		        $n_index+=2;
		    }else{
		        $new_array_interval[$n_index]['min'] = $array_interval[$i]['min'];
		        $new_array_interval[$n_index]['max'] = $array_interval[$i]['max'];
		        if($n_index == 0){
		        	$count = $this->db->query("select count(gold_history_date) as count_result from gold_history where  gold_history_close>=".$new_array_interval[$n_index]['min']." and gold_history_close<=".$new_array_interval[$n_index]['max']." limit 1")->row()->count_result;
		        }else{
		        	$count = $this->db->query("select count(gold_history_date) as count_result from gold_history where  gold_history_close>".$new_array_interval[$n_index]['min']." and gold_history_close<=".$new_array_interval[$n_index]['max']." limit 1")->row()->count_result;
		        }
		        $new_array_interval[$n_index]['occ'] = $count;
		        $new_array_interval[$n_index]['linguistik'] = 'A'.($n_index+1);
		        $new_array_interval[$n_index]['condition'] = 'First';
		        $n_index++;
		    }
		}
		$data['data_interval'] = $new_array_interval;
		$this->template->load('default',$this->folder.'/proses',$data);
	}
	public function grafik(){
		$data['gold_history'] = $this->db->query("select * from gold_history order by gold_history_date asc")->result();
		$this->template->load('default',$this->folder.'/grafik',$data);
	}

	private function find_linguistik_val($data_interval,$search_val){
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
}
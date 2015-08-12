<?php 
class Peramalan extends CI_Controller{

	public $folder = 'peramalan';

	public function __construct(){
		parent::__construct();
		$this->load->library('upload');
		$this->load->library('fuzzy_time_series');
		$this->load->library('encrypt');
	}

	public function index(){
		redirect('peramalan/import');
	}

	public function import(){
		$data['error'] = false;
		if(!empty($_FILES)){
			$config['upload_path'] = './files/peramalan/';
			$config['allowed_types'] = 'xls';
			$config['max_size']	= '1000000';
			$config['overwrite'] = true;
			$this->upload->initialize($config);
			if($this->upload->do_upload('file_input')){
				$data = $this->upload->data();
				$this->load->helper('excel');
		    	$file = 'files/peramalan/'.$data['file_name'];
		        $objReader = read_excel();
		        $objPHPExcel = $objReader->load($file); //$file --> your filepath and filename
		        $objWorksheet = $objPHPExcel->getActiveSheet();
		        $highestRow = $objWorksheet->getHighestRow(); // e.g. 10
		        $highestColumn = $objWorksheet->getHighestColumn(); // e.g 'F'
		        $highestColumnIndex = PHPExcel_Cell::columnIndexFromString($highestColumn); // e.g. 5
		        $this->fuzzy_time_series->initialize();
		        $nilai_ramal = '-';
		        $tanggal_pengujian = date('Y-m-d H:i:s');
		        for ($row = 2; $row <= $highestRow; ++$row) {
		        	$array_data = array(
		        		'data_uji_date'=>date('Y-m-d',strtotime(PHPExcel_Style_NumberFormat::toFormattedString($objWorksheet->getCellByColumnAndRow(0, $row)->getValue(), 'm/d/Y'))),
		        		'data_uji_price'=>$objWorksheet->getCellByColumnAndRow(1, $row)->getValue(),
		        		'data_uji_ramalan'=>$nilai_ramal,
		        		'data_uji_error'=>($nilai_ramal=='-')?'-':$objWorksheet->getCellByColumnAndRow(1, $row)->getValue()-$nilai_ramal,
		        		'data_uji_tanggal'=>$tanggal_pengujian,
		        	);
		        	$this->db->insert('data_uji',$array_data);
		        	$nilai_ramal = $this->fuzzy_time_series->calculate($objWorksheet->getCellByColumnAndRow(1, $row)->getValue());
		        }
		        redirect('peramalan/import');
			}else{
				$data['error'] = true;
			}
		}
		$data['data_uji'] = $this->db->query("select distinct(data_uji_tanggal) from data_uji order by data_uji_tanggal desc")->result();
		$this->template->load('default',$this->folder.'/import',$data);
	}

	function detail($date_encrypt){
		$date = date('Y-m-d H:i:s',strtotime($this->encrypt->safe_b64decode($date_encrypt)));
		$data['data_uji'] = $this->db->query("select * from data_uji where data_uji_tanggal='".$date."' order by data_uji_date asc")->result();
		$data['date'] = $date;
		$this->template->load('default',$this->folder.'/detail',$data);
	}

	function delete($date_encrypt){
		$date = date('Y-m-d H:i:s',strtotime($this->encrypt->safe_b64decode($date_encrypt)));
		$data['data_uji'] = $this->db->query("delete from data_uji where data_uji_tanggal='".$date."'");
		// $this->template->load('default',$this->folder.'/import',$data);
		redirect('peramalan/import');
	}
}
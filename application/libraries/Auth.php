<?php 
Class Auth{

	private $ci;
	private $error_message = '';

	public function __construct(){
		$this->ci = & get_instance();
		$this->ci->load->model(array('auth/users'));
	}

	public function login($username,$password){
		$check_user = $this->ci->users->get_user_by_username($username);
		if($check_user!=FALSE){
			if($check_user->user_password==$this->hash_password($password)){
				//set session
				if($check_user->user_activate==TRUE){
					$array_data = array(
						'user_id'=>$check_user->user_id,
						'user_name'=>$check_user->user_name,
						'user_level'=>$check_user->users_level_id,
						);
					$this->ci->session->set_userdata($array_data);
					$this->ci->users->update_last_login($check_user->user_id);
					return TRUE;
				}else{
					$this->set_error_message(6);
				}
			}else{
				$this->set_error_message(1);
			}
		}else{
			$this->set_error_message(3);
		}
		return FALSE;
	}

	public function create_user($username,$password,$fullname,$user_level,$activate = TRUE){
		$password = $this->hash_password($password);
		$user = $this->ci->users->create_user($username,$password,$fullname,$user_level,$activate);
		if($user!=FALSE){
			$this->set_error_message(4);
			return TRUE;
		}else{
			$this->set_error_message(5);
		}
		return FALSE;
	}

	private function hash_password($password){
		return md5($password);
	}

	public function is_logged_in(){
		$user_id = $this->ci->session->userdata('user_id');
		if(isset($user_id)){
			return TRUE;
		}
		return FALSE;
	}

	public function get_session_user_id(){
		return $this->ci->session->userdata('user_id');
	}

	private function set_error_message($level = 1){
		$error = array(
			1=>'Username atau password salah',
			2=>'Username sudah terdaftar',
			3=>'User belum terdaftar. Silahkan daftar terlebih dahulu',
			4=>'Daftar user berhasil',
			5=>'Daftar user gagal',
			6=>'User Tidak Aktif',
		);
		$this->error_message = $error[$level];
	}

	public function get_error_message(){
		return $this->error_message;
	}

	public function logout(){
		$array_data = array(
			'user_id'=>'',
			'user_name'=>'',
			'user_level'=>'',
			);
		$this->ci->session->unset_userdata($array_data);
		$this->ci->session->sess_destroy();
	}


}
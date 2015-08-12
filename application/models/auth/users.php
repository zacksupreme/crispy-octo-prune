<?php 
Class Users extends CI_Model{

	private $table_name = 'users';
	public function __construct(){

	}

	public function get_user_by_username($username){
		$this->db->select('*');
		$this->db->where('user_name',$username);
		$query = $this->db->get($this->table_name)->row();
		if(!empty($query)){
			return $query;
		}
		return FALSE;
	}

	public function get_user_by_id($id){
		$this->db->select('*');
		$this->db->where('user_id',$id);
		$query = $this->db->get($this->table_name)->row();
		if(!empty($query)){
			return $query;
		}
		return FALSE;
	}


	public function create_user($username,$password,$fullname,$activate = TRUE){
		$this->db->set('user_name',$username);
		$this->db->set('user_password',$password);
		$this->db->set('user_fullname',$fullname);
		$this->db->set('user_activate',$activate);
		$this->db->set('user_created',date('Y-m-d H:i:s'));
		$this->db->insert($this->table_name);
		if($this->db->affected_rows()){
			return TRUE;
		}
		return FALSE;
	}

	public function update_user($user_id,$username,$password,$fullname){
		$this->db->set('user_name',$username);
		$this->db->set('user_password',$password);
		$this->db->set('user_fullname',$fullname);
		$this->db->where('user_id',$user_id);
		if($this->db->update($this->table_name)){
			return TRUE;
		}
		return FALSE;
	}

	public function update_last_login($user_id){
		$this->db->set('user_last_login',date('Y-m-d,H:i:s'));
		$this->db->set('user_last_ip',$_SERVER['REMOTE_ADDR']);
		$this->db->where('user_id',$user_id);
		if($this->db->update($this->table_name)){
			return TRUE;
		}
		return FALSE;
	}

	public function set_activation($activate = TRUE){
		$this->db->set('user_activate',$activate);
		if($this->db->update($this->table_name)){
			return TRUE;
		}
		return FALSE;
	}

	public function delete_user($id){
		$this->db->where('user_id',$id);
		if($this->db->delete($this->table_name)){
			return TRUE;
		}
		return FALSE;
	}


}
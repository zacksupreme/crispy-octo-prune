<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public $folder = 'training';

	public function index()
	{
		$this->template->load('default',$this->folder.'/home');
	}
}
<?php
 /**
 * 
 */
 class User extends CI_Controller
 {
 	function __construct(){
 		parent:: __construct();
 		$this->load->model('main_model');
 		
 	}
 	function index()
 	{	
 		$this->load->view('form_v');
 	}

 	function add(){
 		$this->index();

 		$username = $this->input->post('username');
 		$fullname = $this->input->post('fullname');
 		$password = $this->input->post('password');
 		$level = $this->input->post('level');
 		$data = array('username' => $username,
 					'fullname' => $fullname,
 					'password' => $password,
 					'level' => $level );
 		$this->main_model->tambah($data); 	
 	}

 	function del($id){
 		$this->main_model->del($id);

 		redirect('User/show');
 	}

 	function show(){
 		$data['t_user'] = $this->main_model->gets();
		$this->load->view('form',$data);
 	}
 }
?>
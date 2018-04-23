<?php
/**
* 
*/
class Main_model extends CI_Model
{
	function tambah($data){
		
		$this->db->insert('t_user',$data);

	}
	}	
	
?>
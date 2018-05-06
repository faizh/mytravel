<?php
/**
* 
*/
class main_model extends CI_Model
{
	
	function tambah($data){
		$this->db->insert("t_user",$data);
	}

	function gets(){
		return $this->db->get('t_user')->result();
	}

	function del($id){
		$this->db->delete('t_user', ["id"=>$id]);
	}
}
?>
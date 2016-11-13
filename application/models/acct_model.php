<?php
/*	The Crud Master  */ 
class Acct_model extends CI_Model {
	function __construct(){
		parent::__construct();
	}
	var $table = 'users'; 
	//	Unique data field: email_address
	/* --- C R U D --- */
	//CREATE
	function insert_account($data){
		$q = $this->get_account($data['email_address']);
		if ($q->num_rows() < 1){//account doesn't exist, go ahead and insert!
			$results = $this->db->insert('users', $data);
			return TRUE;
		}else {
			return FALSE;
		}
	}
	//READ
	function get_account($email){
		$this->db->where('email_address',$email);
		$results = $this->db->get('users');
		return $results;
	}
	//UPDATE
	function update_account($data){
		$this->db->where('email_address', $data['email_address']);
		$results = $this->db->update('users', $data);
		return $results;
	}
	//DELETE
	function delete_account($id){
		$this->db->where('id', $id);
		$results = $this->db->delete('users');
	}
}
?>
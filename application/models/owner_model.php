<?php

/*	The Crud Master  */ 

class Owner_model extends CI_Model {
	
	function __construct(){
		parent::__construct();
	}
	
	
	function get_account($username){
		
		$this->db->where('username',$username);
		$results = $this->db->get('managers');
		return $results;
		
	}
	
	function get_order($order_id){
		
			$this->db->where('id', $order_id);
			$order = $this->db->get('orders');
			
			if ($order==FALSE || $order->num_rows() < 1){
				return FALSE;
			}
			
			$this->db->where('order_id', $order_id);
			$items = $this->db->get('items');
	
			$this->db->where('order_id', $order_id);
			$toppings = $this->db->get('item_inst');
			
			$data = array(
				'order'=>$order,
				'items'=>$items,
				'toppings'=>$toppings				
			);
			
			return $data;
			
	}
	
	function set_order_verified($order_id){
		
		$data = array('verified'=>TRUE, 'v_time'=>time());
		
		$this->db->where('id', $order_id);
		$results = $this->db->update('orders', $data);
		return $results;
	
	}
	
	function set_order_done($order_id){
	
		$data = array('ready_done'=>TRUE, 'rd_time'=>time());
		
		$this->db->where('id', $order_id);
		$results = $this->db->update('orders', $data);
		return $results;
		
	}
	
	
		
}
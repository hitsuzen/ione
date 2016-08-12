<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * User_model class.
 * 
 * @extends CI_Model
 */
class Advertiser_model extends CI_Model {

	/**
	 * __construct function.
	 * 
	 * @access public
	 * @return void
	 */
	public function __construct() {
		
		parent::__construct();
		$this->load->database();
		
	}
	
	
	public function get_advertisers() {
		
		$this->db->from('advertisers');
		//$this->db->where('id', $user_id);
		return $this->db->get();
		
	}
	
	
}

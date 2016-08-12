<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Advertiser extends CI_Controller {

	/**
	 * __construct function.
	 * 
	 * @access public
	 * @return void
	 */
	public function __construct() {
		
		parent::__construct();
		$this->load->library(array('session'));
		$this->load->helper(array('url'));
		$this->load->model('user_model');
		$this->load->model('advertiser_model');
		
	}
	
	public function index()
	{
		
		$data['ad'] = $this->advertiser_model->get_advertisers();
		//var_dump($_SESSION);
		//die();
		$this->load->view('shared/header');
		$this->load->view('advertiser/index', $data);
	}
	
	public function interna()
	{
		
		//var_dump($_SESSION);
		//die();
		$this->load->view('shared/header');
		$this->load->view('advertiser/internal');
	}
	
	public function detail()
	{
		
		//var_dump($_SESSION);
		//die();
		$this->load->view('shared/header');
		$this->load->view('advertiser/detail');
	}
}

<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Briefing extends CI_Controller {

	/**
	 * __construct function.
	 * 
	 * @access public
	 * @return void
	 */
	public function __construct() {
		
		parent::__construct();
		
		if (!isset($_SESSION['logged_in']) && $_SESSION['logged_in'] !== true) {
			redirect('login');
		}
		
	}
	
	public function index()
	{
		
		//var_dump($_SESSION);
		//die();
		$this->load->view('shared/header');
		$this->load->view('briefing/index');
	}
	
	public function dsp()
	{
		
		//var_dump($_SESSION);
		//die();
		$this->load->view('shared/header');
		$this->load->view('briefing/dsp');
		$this->load->view('shared/footer');
	}
}

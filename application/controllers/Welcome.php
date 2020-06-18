<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */

	function __construct()
	{
		parent::__construct();
		$this->load->library(array('form_validation'));
		$this->load->model('M_Welcome');
	}

	public function index()
	{
		$this->load->view('home');
	}

	public function Konsultasi()
	{
		$data['gejala']=$this->M_Welcome->getDataGejala();
		$this->load->view('konsultasi', $data);
	}

	public function Penyakit()
	{
		$data['penyakit']=$this->M_Welcome->getDataPenyakit();
		$this->load->view('penyakit', $data);
	}

	function aksi_login()
	{
		$username=$this->input->post('email');
		$password=$this->input->post('password');
		$cek=$this->M_Welcome->cek_login($username,$password);
		$tes=count($cek);
		if ($tes > 0 ) 
		{
			$data_login=$this->M_Welcome->cek_login($username,$password);
			$level=$data_login->level;
			$nama=$data_login->nama;
			$alamat=$data_login->alamat;
			$id=$data_login->id_users;
			$nowa=$data_login->noWa;
			$username=$data_login->email;
			$data=array('level' => $level,
				'nama' => $nama,
				'alamat' => $alamat,
				'id_users' => $id,
				'noWa' => $nowa,
				'email' => $username);
			$this->session->set_userdata($data);
			
			if ($level=='Admin')
			{
				redirect('Home');
			}
			elseif ($level=='Pakar')
			{
				redirect('Pakar');
			}
			
		}
		else
		{
			echo "<script>alert('Email atau Password yang Anda Masukan Salah !!!');history.go(-1);</script>";
		}
	}

	function logout()
	{
		$this->session->unset_userdata('username');
		$this->session->unset_userdata('level');
		$this->session->sess_destroy();
		redirect(base_url('Welcome'));
	}

	public function simpanKomentar()
	{
		$komen = $this->input->post('komen');
 
		$data = array(
			'komen' => $komen
		);
		$this->M_Welcome->input_datakomentar($data,'komentar');
		redirect('Welcome');
	}
}

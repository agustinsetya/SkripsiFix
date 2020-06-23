<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends CI_Controller {

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
		$this->load->model('M_Users');
		$this->load->library(array('form_validation','session'));

		if(!$this->session->userdata('level'))
		{
			redirect('welcome');
		}

	}

	public function index()
	{
		$data['user']=$this->M_Users->getDataUsers();
		$data['page']='User.php';
		$this->load->view('Admin/menu',$data);	
	}

	public function simpanUser()
	{
		$nama=$this->input->post('nama');
        $username=$this->input->post('username');
        $password=$this->input->post('password');
        $alamat=$this->input->post('alamat');
        $noWa=$this->input->post('noWa');
        $level=$this->input->post('level');
        $this->session->set_flashdata('success','Tambah User berhasil');
        $this->M_Users->inputdata($nama,$username,$password,$alamat,$noWa,$level);
        redirect('Users');
	}

	public function editProfil(){
		$data['user']= $this->M_Users->getUserId();
		$data['page']='editProfile.php';
		$this->load->view('admin/menu',$data);
	}

	public function updateProfile()
	{
		$data['username'] = set_value('username');
	    $data['nama'] = set_value('nama');
	    $data['alamat'] = set_value('alamat');
	    $data['noWa'] = set_value('noWa');
	    $this->session->set_userdata($data);
	    $this->M_Users->updateProfile($data); //memasukan data ke database
	    $this->session->set_flashdata('success','Profile Berhasil Diubah');
	    redirect('Users/editProfil'); //mengalihkan halaman
	}

	function ubahpass(){
        $data = array(
            'password'		=>md5($this->input->post('password'))
        );
        $this->M_Users->ubahpassword($data);
        $this->session->set_userdata($data);
        redirect('Users/editProfil');
    }

	function hapus_user($id){
		$where = array('id_users' => $id);
		$this->M_Users->hapus($where,'users');
		$this->session->set_flashdata('success','Hapus User berhasil');
		redirect('Users');
	}
}

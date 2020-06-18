<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pemeriksaan extends CI_Controller {

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
		$this->load->model('M_Pemeriksaan');
		$this->load->library('pdf');
		$this->load->library(array('form_validation','session'));

		if(!$this->session->userdata('level'))
		{
			redirect('welcome');
		}

	}

	public function index()
	{
		$data['pemeriksaan'] = $this->M_Pemeriksaan->getDataPemeriksaan();
		$data['page']='Pemeriksaan.php';
		$this->load->view('Admin/menu',$data);
	}

	public function detailPemeriksaan($id)
	{
		$data['pemeriksaan'] = $this->M_Pemeriksaan->getDataPemeriksaanId($id);
		$data['page']='PemeriksaanDetail.php';
		$this->load->view('Admin/menu',$data);
	}

    function pdf(){
        $pdf = new FPDF('P', 'mm','Letter');
        // membuat halaman baru
        $pdf->AddPage();
        // setting jenis font yang akan digunakan
        $pdf->SetFont('Arial','B',16);
        // mencetak string 
        $pdf->Cell(190,7,'WOMENS SOLUTION',0,1,'C');
        $pdf->SetFont('Arial','B',12);
        $pdf->Cell(190,7,'DAFTAR PEMERIKSAAN',0,1,'C');
        // Memberikan space kebawah agar tidak terlalu rapat
        $pdf->Cell(10,7,'',0,1);

        $pdf->SetFont('Arial','B',10);
        $pdf->Cell(8,6,'No',1,0,'C');
        $pdf->Cell(40,6,'Tanggal Pemeriksaan',1,0,'C');
        $pdf->Cell(100,6,'Dugaan Penyakit',1,0,'C');
        $pdf->Cell(30,6,'Persentase (%)',1,1,'C');
        
        $pdf->SetFont('Arial','',10);

		$data = $this->M_Pemeriksaan->getDataPemeriksaan();
		$no=1;
        foreach ($data as $key){
        	$pdf->Cell(8,6,$no,1,0,'C');
            $pdf->Cell(40,6,$key->tgl_pemeriksaan,1,0,'C');
            $pdf->Cell(100,6,$key->nm_penyakit,1,0);
            $pdf->Cell(30,6,$key->hasil,1,1, 'C');
            $no++;
        }
        $pdf->Output();
    }
}

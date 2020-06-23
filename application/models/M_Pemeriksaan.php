<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class M_Pemeriksaan extends CI_Model {

	public function getDataPemeriksaan()
	{
		$query = $this->db->query("SELECT pemeriksaan.*, penyakit.id_penyakit, penyakit.nm_penyakit, users.id_users, users.nama FROM pemeriksaan INNER JOIN penyakit ON pemeriksaan.fk_penyakit = penyakit.id_penyakit LEFT JOIN users ON pemeriksaan.fk_user = users.id_users ORDER BY id_pemeriksaan DESC");
		return $query->result();
	}

	function getDataPemeriksaanId($id)
	{
		$query = $this->db->query("Select pemeriksaan.id_pemeriksaan, detail_pemeriksaan.*, gejala.id_gejala, gejala.nm_gejala from detail_pemeriksaan join pemeriksaan on detail_pemeriksaan.fk_pemeriksaan = pemeriksaan.id_pemeriksaan join gejala on gejala.id_gejala=detail_pemeriksaan.fk_gejala where detail_pemeriksaan.fk_pemeriksaan='$id'");
		return $query->result();
	}

	//proses simpan/cetak
	public function view_row(){ 
		$query = $this->db->query("SELECT pemeriksaan.*, penyakit.id_penyakit, penyakit.nm_penyakit, users.id_users, users.nama FROM pemeriksaan INNER JOIN penyakit ON pemeriksaan.fk_penyakit = penyakit.id_penyakit LEFT JOIN users ON pemeriksaan.fk_user = users.id_users ORDER BY id_pemeriksaan DESC");
		return $query->result();
	}

	// //contoh perintah menggunakan group_concat
	// function getDataPemeriksaanCetak()
	// {
	// 	$query = $this->db->query("Select pemeriksaan.*, penyakit.id_penyakit, penyakit.nm_penyakit, detail_pemeriksaan.*, GROUP_CONCAT(fk_gejala) as fk_gejala from pemeriksaan INNER JOIN penyakit ON pemeriksaan.fk_penyakit = penyakit.id_penyakit join detail_pemeriksaan on pemeriksaan.id_pemeriksaan = detail_pemeriksaan.fk_pemeriksaan where fk_gejala = id_pemeriksaan");
	// 	return $query->result();
	// }
}
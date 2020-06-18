<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class M_Users extends CI_Model {

	public function getDataUsers()
	{
		$this->db->select('*');
		$this->db->from('users');
		$this->db->order_by('id_users','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	public function getUserId($id)
	{
		$this->db->select('*');
		$this->db->from('users');
		$this->db->where('id_users',$id);
		$query = $this->db->get();
		return $query->result();
	}

	function inputData($nama,$email,$password,$alamat,$noWa,$level){
        $hasil=$this->db->query("INSERT INTO users (nama, email, password, alamat, noWa, level) VALUES ('$nama','$email',md5('$password'),'$alamat','$noWa','$level')");
        return $hasil;
    }

	function hapus($where,$table){
		$this->db->where($where);
		$this->db->delete($table);
	}
}
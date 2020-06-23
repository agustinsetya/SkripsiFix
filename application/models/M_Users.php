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

	public function getUserId()
	{
		$id_users=$this->session->userdata['id_users'];
		$level=$this->session->userdata['level'];
		$query = $this->db->query("Select * from users where id_users='$id_users' and level='$level'");
		return $query->result();
	}

	function inputData($nama,$username,$password,$alamat,$noWa,$level){
        $hasil=$this->db->query("INSERT INTO users (nama, username, password, alamat, noWa, level) VALUES ('$nama','$username',md5('$password'),'$alamat','$noWa','$level')");
        return $hasil;
    }

    public function updateProfile($data){
		try{
    		$id_users=$this->session->userdata['id_users'];
	      	$this->db->where('id_users',$id_users)->limit(1)->update('users', $data);
	      	return true;
	    }catch(Exception $e){}
	}

	function ubahpassword($data){
		$id_users=$this->session->userdata['id_users'];
        $this->db->where('id_users',$id_users);
        $this->db->update('users', $data);
        return TRUE;
    }

	function hapus($where,$table){
		$this->db->where($where);
		$this->db->delete($table);
	}
}
<?php 
class Model_kategori extends CI_Model{
	public function data_samsung()
	{
		return $this->db->get_where('tb_barang',array('kategori' => 'samsung'));//nama bebase =>elektronik
	}
	public function data_iphone()
	{
		return $this->db->get_where('tb_barang',array('kategori' => 'iphone'));
	}
	public function data_xiaomi()
	{
		return $this->db->get_where('tb_barang',array('kategori' => 'xiaomi'));
	}
	public function data_oppo()
	{
		return $this->db->get_where('tb_barang',array('kategori' => 'oppo'));
	}
	public function data_asus()
	{
		return $this->db->get_where('tb_barang',array('kategori' => 'asus'));
	}
}
?>
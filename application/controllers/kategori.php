<?php 
class Kategori extends CI_Controller{
	public function samsung()
	{
		$data['samsung'] = $this->model_kategori->data_samsung()->result();
		$this->load->view('template/header');
		$this->load->view('template/sidebar');
		$this->load->view('samsung',$data);
		$this->load->view('template/footer');
	}
	public function iphone()
	{
		$data['iphone'] = $this->model_kategori->data_iphone()->result();
		$this->load->view('template/header');
		$this->load->view('template/sidebar');
		$this->load->view('iphone',$data);
		$this->load->view('template/footer');
	}
	public function xiaomi()
	{
		$data['xiaomi'] = $this->model_kategori->data_xiaomi()->result();
		$this->load->view('template/header');
		$this->load->view('template/sidebar');
		$this->load->view('xiaomi',$data);
		$this->load->view('template/footer');
	}
	public function oppo()
	{
		$data['oppo'] = $this->model_kategori->data_oppo()->result();
		$this->load->view('template/header');
		$this->load->view('template/sidebar');
		$this->load->view('oppo',$data);
		$this->load->view('template/footer');
	}
	public function asus()
	{
		$data['asus'] = $this->model_kategori->data_asus()->result();
		$this->load->view('template/header');
		$this->load->view('template/sidebar');
		$this->load->view('asus',$data);
		$this->load->view('template/footer');
	}
}
?>
<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $data['title'] = 'Dashboard Admin';
        $data['nama'] = 'Admin Pemilik Toko';
        $this->load->view('admin/header', $data);
        $this->load->view('admin/sidebar');
        $this->load->view('admin/dashboard', $data);
        $this->load->view('admin/footer');
    }

    public function barang()
    {
        $data['title'] = 'Dashboard Admin';
        $data['nama'] = 'Admin Pemilik Toko';
        $this->load->view('admin/header', $data);
        $this->load->view('admin/sidebar');
        $this->load->view('admin/dashboard', $data);
        $this->load->view('admin/footer');
    }

    public function laporan($pilih)
    {
        echo $pilih;
        die;
        $data['title'] = 'Dashboard Admin';
        $data['nama'] = 'Admin Pemilik Toko';
        $this->load->view('admin/header', $data);
        $this->load->view('admin/sidebar');
        $this->load->view('admin/dashboard', $data);
        $this->load->view('admin/footer');
    }

 
}

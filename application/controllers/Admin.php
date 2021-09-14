<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Admin_model', 'madmin');
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
        //load libary table pagination
        $this->load->library('pagination');
        $config['total_rows'] = $this->madmin->hitungrowsBarang();
        $config['per_page'] = 12;

        //inisialisasi library pagination
        $this->pagination->initialize($config);

        $data['start'] = $this->uri->segment(3);
        $data['title'] = 'Dashboard Admin';
        $data['nama'] = 'Admin Pemilik Toko';
        $data['barangs'] = $this->madmin->getBarang($config['per_page'], $data['start']);


        $this->load->view('admin/header', $data);
        $this->load->view('admin/sidebar');
        $this->load->view('admin/barang', $data);
        $this->load->view('admin/footer');

        //buat konfigurasi data table barang
        // $this->load->view('admin/barangjs');
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

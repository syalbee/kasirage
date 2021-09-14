<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

class Admin_model extends CI_Model
{
    public function getBarang($limit, $start)
    {
        return $this->db->get('barang', $limit, $start)->result_array();
    }

    public function hitungrowsBarang()
    {
        return $this->db->get('barang')->num_rows();
    }
}

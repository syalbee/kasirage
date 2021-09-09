<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Coba extends CI_Controller {

   public function __construct(){

     parent::__construct();

     // Load model
     $this->load->model('Coba_model');

   }

   public function index(){

     // load view
     $this->load->view('coba/coba');

   }

   public function empList(){
     
     // POST data
     $postData = $this->input->post();

     // Get data
     $data = $this->Coba_model->getEmployees($postData);

     echo json_encode($data);
  }

}
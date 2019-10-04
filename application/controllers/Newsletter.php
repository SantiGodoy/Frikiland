<?php

class Newsletter extends CI_Controller
{
    public function index()
    {
        $this->load->helper("form");
        $this->load->library('form_validation');

        $this->form_validation->set_rules('email', 'Correo electrónico', 'required');

        $this->load->view("layout/header", array("title" => "Frikiland"));
        $this->load->view("layout/navbar");

        if ($this->form_validation->run() == FALSE)
            $this->load->view('newsletter_view');
        else
        {
            $this->load->model("newsletter_model");
            $data = array("email" => $this->input->post("email"));
            if($this->newsletter_model->nuevaSubscipcion($data))
               $this->load->view("newsletter_exito");
            else
                $this->load->view("newsletter_fallo");
            $this->load->view("layout/footer");

        }


    }
}
<?php

class Direcciones extends CI_Controller
{

    public function eliminar($id)
    {
        if (!isset($_SESSION['isLoggedIn']))
            redirect(site_url('usuarios/login'));
        $this->db->delete('direcciones', array('id' => $id));
        redirect(site_url('perfil/direcciones'));
    }
}
<?php

class Carrito extends CI_Controller
{
    public function index()
    {
        if (!isset($_SESSION['isLoggedIn']))
            redirect(site_url('usuarios/login'));

        $data['usuario'] = $_SESSION['id'];
        $this->load->model("articulos_model");
        $this->load->model("carrito_model");

        $data['carritos'] = $this->carrito_model->getCarrito($_SESSION['id'])->result_array();

        foreach ($data['carritos'] as $item)
        {
            $articulos = $this->articulos_model->getArticuloWithId($item['idArticulo'])->result_array();
            $arrayArticulos[$item['idArticulo']] = array("id" => $articulos[0]['id'],
                                                         "nombre" => $articulos[0]['nombre'],
                                                         "stock" => $articulos[0]['stock'],
                                                         "precio" => $articulos[0]['precio'],
                                                         "imagen" => $articulos[0]['imagen']);
        }
        if(isset($arrayArticulos))
            $data['articulos'] = $arrayArticulos;
        $data['stockDisponible'] = $this->stockDisponible();
        $this->load->view("layout/header", array("title" => "Carrito"));
        $this->load->view("layout/navbar");
        $this->load->view("carrito_view", $data);
        $this->load->view("layout/footer");
    }

    public function anadirAlCarrito($idArticulo)
    {
        $this->load->model("carrito_model");
        $this->carrito_model->anadirArticuloCarrito($idArticulo);
        redirect(site_url('carrito'));
    }

    public function stockDisponible()
    {
        if (!isset($_SESSION['isLoggedIn']))
            redirect(site_url('usuarios/login'));

        $this->load->model("articulos_model");
        $this->load->model("carrito_model");
        $data['carritos'] = $this->carrito_model->getCarrito($_SESSION['id'])->result_array();

        foreach ($data['carritos'] as $item)
        {
            $articulos = $this->articulos_model->getArticuloWithId($item['idArticulo'])->result_array();
            if($item['cantidad'] > $articulos[0]['stock'])
                return false;
        }
        return true;
    }

    public function eliminar($idLineaDeCompra)
    {
        if (!isset($_SESSION['isLoggedIn']))
            redirect(site_url('usuarios/login'));

        $this->load->model("carrito_model");
        $this->load->view("layout/header", array("title" => "ELiminar del carrito"));
        $this->load->view("layout/navbar");
        $this->carrito_model->eliminarLineaDeCompra($idLineaDeCompra);
        redirect(site_url('carrito'));

        $this->load->view("layout/footer");

    }
}
<?php

class Articulos_model extends CI_Model
{
    public function getArticulos()
    {
        $query = $this->db->get('articulos');
        return $query;
    }

    public function getArticulo($articulo)
    {
        $query = $this->db->get_where('articulos', array("nombre" => $articulo));
        return $query;
    }

    public function getArticuloWithId($id)
    {
        $query = $this->db->get_where('articulos', array("id" => $id));
        return $query;
    }

    public function eliminarArticulo($id)
    {
        $this->db->delete('articulos', array('id' => $id));
    }

    public function nuevoArticulo($data)
    {
        return $this->db->insert('articulos', $data);
    }

    public function modificarArticulo($data)
    {
        return $this->db->set($data)
            ->where('id =', $data['id'])
            ->update('articulos');
    }

}
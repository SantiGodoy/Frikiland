<?php
class Comentarios_model extends CI_Model
{
    public function getComentarios($id)
    {
        $query = $this->db->get_where('comentarios', array("idArticulo" => $id));
        return $query;
    }

    public function addComentario($data)
    {
        $query = $this->db->get_where('comentarios',array("idArticulo" => $data['idArticulo'], "idUsuario" => $data['idUsuario']));
        $row = $query->row();
        if(isset($row))
            return false;
        return $this->db->insert('comentarios', $data);
    }

    public function eliminarComentario($id)
    {
        $this->db->delete('comentarios', array('idUsuario' => $id));
    }
}
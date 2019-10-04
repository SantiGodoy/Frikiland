<?php

class Tarjetas_model extends CI_Model
{
    public function getTarjeta($id)
    {

        $this->db->select('*')
            ->from('tarjetas')
            ->where('id =', $id);

        $query = $this->db->get();
        $row = $query->row_array();
        if(isset($row))
            return $row;
        else
            return false;
    }

    public function actualizarTarjeta($data)
    {
        $this->load->helper('security');
        $data = xss_clean(html_escape($data));

        return $this->db->set($data)
            ->where('id =', $data['id'])
            ->update('tarjetas');
    }

    public function nuevaTarjeta($data)
    {
        $this->load->helper('security');

        return $this->db->insert('tarjetas', xss_clean(html_escape($data)));
    }
}
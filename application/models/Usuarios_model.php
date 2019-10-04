<?php

class Usuarios_model extends CI_Model
{
    public function nuevoUsuario($data)
    {
        if(!isset($data['esAdministrador']))
            $data["esAdministrador"] = false;
        $data['contrasena'] = password_hash($data['contrasena'], PASSWORD_BCRYPT, array("cost" => 12));
        $this->load->helper('security');

        return $this->db->insert('usuarios', xss_clean(html_escape($data)));
    }

    public function actualizarUsuario($data)
    {
        if(!isset($data['esAdministrador']))
            $data["esAdministrador"] = false;
        if(array_key_exists('contrasena', $data))
            $data['contrasena'] = password_hash($data['contrasena'], PASSWORD_BCRYPT, array("cost" => 12));

        $this->load->helper('security');
        $data = xss_clean(html_escape($data));

        return $this->db->set($data)
                    ->where('id =', $data['id'])
                    ->update('usuarios');
    }

    public function iniciarSesion()
    {
        $data = array(
            "nombreUsuario" => $this->input->post('nombreUsuario'),
            "contrasena" => $this->input->post('contrasena'),
        );


        $this->db->select('contrasena')
            ->from('usuarios')
            ->where('nombreUsuario =', $data['nombreUsuario'])
            ->or_where('email =', $data['nombreUsuario']);

        $query = $this->db->get();

        if ($query->num_rows() == 1)
            return password_verify($data['contrasena'], $query->result()[0]->contrasena);
        else return false;
    }

    public function getData($username)
    {

        $this->db->select('id, nombre, esAdministrador')
            ->from('usuarios')
            ->where('nombreUsuario =', $username)
	    ->or_where('email', $username);

        $query = $this->db->get();

        if ($query->num_rows() == 1)
            return array("nombre" => $query->result()[0]->nombre,
                "id" => $query->result()[0]->id,
                "esAdministrador" => $query->result()[0]->esAdministrador);
        else return false;
    }

    public function getDataWithId($id)
    {

        $this->db->select('nombre, apellidos, email, nombreUsuario')
            ->from('usuarios')
            ->where('id =', $id);

        $query = $this->db->get();
        $row = $query->row_array();
        if(isset($row))
            return $row;
        else
            return false;
    }

    public function anadirDireccion($idUsuario, $data)
    {
        $this->load->model('direcciones_model');
        $this->direcciones_model->nuevaDireccion($data);
    }
    public function getAllUsuarios()
    {
        $query = $this->db->get('usuarios');
        return $query;
    }

    public function getDirecciones($id)
    {

        $subqRes = $this->db->select('idDireccion')
            ->from('usuarios_direcciones')
            ->where('idUsuario =', $id)->get_compiled_select();

        return $this->db->select('*')
            ->from('direcciones')
            ->where("id IN ($subqRes)", NULL)->get()->result_array();

    }

    public function getTarjetas($id)
    {
        $subqRes = $this->db->select('idTarjeta')
            ->from('usuarios_tarjetas')
            ->where('idUsuario =', $id)->get_compiled_select();

        return $this->db->select('*')
            ->from('tarjetas')
            ->where("id IN ($subqRes)", NULL)->get()->result_array();
    }

    public function eliminarUsuario($id)
    {
       $this->db->delete('usuarios', array('id' => $id));
    }
}
<?php


class ConexionDB {
    private $_conexion = null;
    private $_usuario = 'root';
    private $clave = '';
    
    function __construct() {
        $this->_conexion = new PDO("mysql:dbname=;host=localhost:3306", $usuario, $clave);
        $this->_conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
    public function get_conexion(){
        return $this->_conexion;
    }   

}

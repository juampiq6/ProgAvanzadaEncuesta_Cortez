<?php
require_once 'ConexionDB.php';

class ControladorPersistencia {

    private $_conexion;
    private static $instancia;
    
    private function __construct() {
        $dbconec = new ConexionDB();
        $this->_conexion = $dbconec->get_conexion();
    }
    
    public static function obtenerCP(){
        if(!self::$instancia instanceof self){
            self::$instancia = new self;}
        return self::$instancia;
    }
    
    public function iniciarTransac(){
    $this->_conexion->beginTransaction();}

    public function confirmarTransac(){
        $this->_conexion->commit();}
    
    public function rollBackTransac(){
        $this->_conexion->rollBack();}
    
    public function ejecutarSentencia($query, $parametros = null) {
        $statement = $this->_conexion->prepare($query);
        if ($parametros) {
            $index = 1;
            foreach ($parametros as $key => $parametro) {
                $statement->bindValue($index, $parametro);
                $index++;
            }
        }

        $statement->execute();
        //print_r($statement);
        return $statement;
    }

    public function getUltimoId() {
        return $this->_conexion->lastInsertId();
    }
    
}

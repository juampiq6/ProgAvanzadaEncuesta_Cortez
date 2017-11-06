<?php


abstract class ControladorPrincipal {
    protected $refCntroladorPersistencia;
    
    function __construct() {
    $this->refControladorPersistencia = ControladorPersistencia::obtenerCP();}
    
    public abstract function alta($parametros);
    public abstract function modificacion($parametros);
    public abstract function baja($id);
    
    
    //faltan los contratos de funciones a implementar por los hijos
}

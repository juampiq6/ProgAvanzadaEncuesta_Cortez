<?php


abstract class ControladorPrincipal {
    protected $refCntroladorPersistencia;
    
    function __construct() {
        $this->refControladorPersistencia = ControladorPersistencia::obtenerCP();
    }
    
    //faltan los contratos de funciones a implementar por los hijos
}

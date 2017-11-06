/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package controlador;

import conexion.BaseDeDatos;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Cliente;

/**
 *
 * @author Ing. Gerardo Magni
 */
public class GestorCliente {
    
      /**
     * Realiza la consulta de personas en la tabla y devuelve el ResultSet
     * correspondiente.
     * @return El resultado de la consulta
     */
    
    Cliente cliente = new Cliente();

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public void cargarCliente(Integer id, String nombre, String apellido, 
                String dni, String calle, Integer numero,String localidad, String provincia){
        Cliente c = new Cliente();
        c.setId(id);
        c.setNombre(nombre);
        c.setApellido(apellido);
        c.setDni(dni);
        c.setNombreCalle(calle);
        c.setNumero(numero);
        c.setLocalidad(localidad);
        c.setProvincia(provincia);
       
        setCliente(c);
        
    }

}

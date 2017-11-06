/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package conexion;

/**
 *
 * @author Martin_C
 */
public interface DBSentencias {
    //Flag para habilitar Trazas y controles
    public boolean DEBUG =false;
    //Insertar nuevo cliente
    public static final String consulta1 = "INSERT INTO cliente (nombre, apellido, dni, calle, numero, localidad, provincia) VALUES (?, ?, ?, ?, ?, ?, ?)";
    //Mdificar cliente
    public static final String consulta2 = "UPDATE cliente SET nombre = ?, apellido = ?, dni = ?, calle = ?, numero = ?, localidad = ?, provincia = ? where id = ?";
    //Eliminar un Cliente
    public static final String consulta3 = "DELETE FROM cliente WHERE id= ?";
    //Buscar por dni
    public static final String consulta4 = "select * from cliente where dni like ?";
    //Obtener todos los clientes
    public static final String consulta5 = "select * from cliente";
    //
    public static final String consulta6 = "select * from cliente where id = ?";
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controlador;


import conexion.BaseDeDatos;
import conexion.DBSentencias;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Martin_C
 */
public class ControladorVista  implements DBSentencias{
    private BaseDeDatos bd;
    private DefaultTableModel modelo;
    private Connection conexion;
    private ControladorGeneral gg;
   
    public ControladorVista() {
        bd= new BaseDeDatos();
        conexion= bd.estableceConexion();
        gg= new ControladorGeneral();
        modelo = new DefaultTableModel();
    }

 

    public DefaultTableModel mostrar(String nroColsulta) {
        try {
            //cambiar x buscar criterio
            PreparedStatement ps = conexion.prepareStatement(nroColsulta);
            ResultSet rs = ps.executeQuery();
            GestorTabla.configuraColumnas(rs, modelo);
            GestorTabla.rellena(rs, modelo);
            return modelo;    
        } catch (SQLException e) {
            System.out.println(e);
            return modelo;
        }
    }
    

    public DefaultTableModel mostrar(String nroConsulta, String [] arregloCampos){
        ResultSet rs = null;
        try {
            
            rs = gg.buscarCriterio(arregloCampos, nroConsulta);
            GestorTabla.configuraColumnas(rs, modelo);
            GestorTabla.rellena(rs, modelo);
            return modelo;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return modelo;
    }
    
    public String[] mostrarFormulario(String nroConsulta, String [] arregloCampos){
        ResultSet rs = null;
        String[] resultado = null;
        try {
            PreparedStatement ps = conexion.prepareStatement(nroConsulta);
           
            for (int i = 0; i < arregloCampos.length; i++) {
                ps.setString(i + 1, arregloCampos[i]);
            }
            rs = ps.executeQuery();
            resultado = new String[rs.getMetaData().getColumnCount()];
            
            while(rs.next()){
            for (int i = 0; i < resultado.length; i++) {
                resultado[i] =rs.getObject(i+1).toString();
            }
            }
            return resultado;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resultado;
    }
}

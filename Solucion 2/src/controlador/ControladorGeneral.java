package controlador;

import conexion.BaseDeDatos;
import conexion.DBSentencias;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Martin_C
 */
public class ControladorGeneral implements DBSentencias {

    
    private Connection conexion;
    private BaseDeDatos bd;
    
    public ControladorGeneral(){
    bd= new BaseDeDatos();
    conexion= bd.estableceConexion();
    }

    public void ejecutarSentencia(String arregloDatosCampos[], String nroConsulta) {
        try {
            PreparedStatement ps = conexion.prepareStatement(nroConsulta);

            for (int i = 0; i < arregloDatosCampos.length; i++) {
                ps.setObject(i + 1, arregloDatosCampos[i]);
            }

            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public ResultSet buscarCriterio(String arregloDatosCampos[], String nroConsulta) {
        ResultSet rs = null;
        try {
            PreparedStatement ps = conexion.prepareStatement(nroConsulta);
           
            for (int i = 0; i < arregloDatosCampos.length; i++) {
                ps.setString(i + 1, arregloDatosCampos[i] + "%");
            }
            rs = ps.executeQuery();
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }

        return rs;
    }

    

    


}

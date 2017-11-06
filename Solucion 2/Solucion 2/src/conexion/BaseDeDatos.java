package conexion;

/**
 *
 * @author Ing. Martin Castro
 */
import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Clase encargada de conexión y consultas a base de datos.

 */
public class BaseDeDatos
{
    /** La conexion con la base de datos */
    private Connection conexion = null;
    private String user = "root";
    private String password = "root";
    private String puerto = "3306";
    private String catalogo = "test";
    private String host = "localhost";
    
    public Connection estableceConexion()
    {
        if (conexion != null)
            return conexion;

        try
        {
            // Se registra el Driver de MySQL
            Class.forName("com.mysql.jdbc.Driver");
            
            String urlConexion = "jdbc:mysql://" + host + ":" + puerto + "/"+catalogo;
           
            conexion = DriverManager.getConnection(urlConexion,user,password);
        } catch (Exception e)
        {
            e.printStackTrace();
        }
        return conexion;
    }

  
    /** Cierra la conexión con la base de datos */
    public void cierraConexion()
    {
        try
        {
            conexion.close();
        } catch (Exception e)
        {
            e.printStackTrace();
        }
    }

   
}

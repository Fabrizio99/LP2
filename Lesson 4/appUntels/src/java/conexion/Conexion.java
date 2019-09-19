package conexion;

import com.mysql.jdbc.Driver;
import java.sql.*;
public class Conexion {
    private static String url="jdbc:mysql://localhost/bduntels";
    private static String user="root";
    private static String pas="12345678";
    private static Connection cn;
    
    public static Connection abrir(){
        try {
            // registrar driver para mysql+
            Class.forName("com.mysql.jdbc.Driver");
            //abre la conexion
            cn=DriverManager.getConnection(url,user,pas);
            System.out.println("entro correctamente la conexion " + cn);
            return cn;
        } catch (Exception ex) {
            return null;
        }
    }
}

package modelo.dao;

import conexion.Conexion;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.bean.Usuario;

public class UsuarioDAO {
    public static Usuario validarUsuario(String usr,String psw){
        //Variable tipo usuario
        Usuario u=null;
        //sql para buscar usuario en la base de datos
        String sql="SELECT * FROM usuario WHERE usuario=? and password=?";
        //conexion a la base de datos
        Connection cn = Conexion.abrir();
        try {
                //objeto para ejecutar sql
            PreparedStatement pst=cn.prepareStatement(sql);
            //asignar valor a los parámetros
            pst.setString(1, usr);
            pst.setString(2, psw);
            //ejecutar 
            ResultSet rs = pst.executeQuery();
            //leer rs
            if(rs.next()){
                //instancia de usuario
                u=new Usuario();
                //asignar valor a sus propiedaddes del objeto
                //encapsulamiento de datos
                u.setIdusuario(rs.getInt(1));
                u.setUsuario(rs.getString(2));
                u.setPassword(rs.getString(3));
                u.setEstado(rs.getString(4));
                u.setCodal(rs.getInt(5));
                //cerrar objetos
                cn.close();
                pst.close();
                rs.close();
            }
        } catch (Exception ex) {
            
        }
        
        
        return u;
    }
}

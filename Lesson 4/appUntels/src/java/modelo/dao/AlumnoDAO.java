package modelo.dao;

import conexion.Conexion;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.bean.Alumno;

public class AlumnoDAO {
    public static Alumno buscarID(int cod){
        Alumno al=null;
        String sql = "select * from alumno where codal=?";
        Connection cn = Conexion.abrir();
        try {
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setInt(1, cod);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                al = new Alumno();
                al.setCodal(rs.getInt("codal"));
                al.setNombre(rs.getString("nombre"));
                al.setApaterno(rs.getString("apaterno"));
                al.setAmaterno(rs.getString("amaterno"));
                al.setDireccion(rs.getString("direccion"));
                al.setFoto(rs.getString("foto"));
            }
            pst.close();
            rs.close();
            cn.close();
            return al;
        } catch (SQLException ex) {
            Logger.getLogger(AlumnoDAO.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    //-----------------
    
    public static ArrayList<Alumno> listar(){
        ArrayList<Alumno> lista = new ArrayList();
        
        Alumno al=null;
        String sql = "select * from alumno";
        Connection cn = Conexion.abrir();
        try {
            PreparedStatement pst = cn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                al = new Alumno();
                al.setCodal(rs.getInt("codal"));
                al.setNombre(rs.getString("nombre"));
                al.setApaterno(rs.getString("apaterno"));
                al.setAmaterno(rs.getString("amaterno"));
                al.setDireccion(rs.getString("direccion"));
                al.setFoto(rs.getString("foto"));
                //agregar objeto alumno al arreglo
                lista.add(al);
            }
            pst.close();
            rs.close();
            cn.close();
            return lista;
        } catch (SQLException ex) {
            return null;
        }
    }
}

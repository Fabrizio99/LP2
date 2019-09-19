/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import modelo.bean.Usuario;
import modelo.dao.AlumnoDAO;
import modelo.dao.UsuarioDAO;

@WebServlet(name = "ServletUsuario", urlPatterns = {"/ServletUsuario", "/validarUser","/cerrarSesion"})
public class ServletUsuario extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        //captura valor urlPatterns del que se invoca en la vista
        String path = request.getServletPath();
        
        if (path.equals("/validarUser")) {
            String usr = request.getParameter("txtus");
            String psw = request.getParameter("txtpas");
            //acceder al modelo para verificar la existencia de usuario
            Usuario us = UsuarioDAO.validarUsuario(usr, psw);
            if(us!=null){
                
                //request.setAttribute("alumnox", AlumnoDAO.buscarID(us.getCodal()));
                
                //crear una variable de sesión cuyo valor es el objeto alumnox
                request.getSession().setAttribute("alumnox", AlumnoDAO.buscarID(us.getCodal()));
                request.getRequestDispatcher("WEB-INF/principal.jsp").forward(request, response);
            }else {
                request.setAttribute("msg", "Usuario y/o password incorrecto...!");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
            /*if (usr.equals("abc") && psw.equals("123")) {
                request.getRequestDispatcher("WEB-INF/principal.jsp").forward(request, response);
            } else {
                request.setAttribute("msg", "Usuario y/o password incorrecto...!");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }*/

        }
        
        if(path.equals("/cerrarSesion")){
            request.getSession().invalidate();
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

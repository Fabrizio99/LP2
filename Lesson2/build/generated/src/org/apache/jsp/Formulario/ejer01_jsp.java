package org.apache.jsp.Formulario;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ejer01_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"estilos.css\">\n");
      out.write("        <title>Formularios</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Hello World!</h1>\n");
      out.write("        <form action=\"../index.jsp\" method=\"post\">\n");
      out.write("            Nombre<input type=\"text\" name=\"txtnom\"><br>\n");
      out.write("            Sexo<input type=\"radio\" name=\"sexo\">Masculino\n");
      out.write("            <input type=\"radio\" name=\"sexo\">Femenino<br>\n");
      out.write("            <select name=\"especialidad\" multiple>\n");
      out.write("                <option >Ing. Sistemas</option>\n");
      out.write("                <option selected>Administración</option>\n");
      out.write("                <option>Ing. Ambiental</option>\n");
      out.write("            </select>\n");
      out.write("            <br>\n");
      out.write("            <!--Hobbies\n");
      out.write("            <input type=\"checkbox\" name=\"dep\" value=\"futbol\">Futbol<br>\n");
      out.write("            <input type=\"checkbox\" name=\"dep\" value=\"futbol\">Ciclismo<br>\n");
      out.write("            <input type=\"checkbox\" name=\"dep\" value=\"futbol\">Voley<br>\n");
      out.write("            <input type=\"checkbox\" name=\"dep\" value=\"futbol\">Parapente<br>-->\n");
      out.write("            <input type=\"submit\" value=\"asd\" id=\"btn-enviar\">\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

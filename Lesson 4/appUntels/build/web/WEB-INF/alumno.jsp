<%@page import="java.util.ArrayList"%>
<%@page import="modelo.bean.Alumno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}
/*menu vertical*/
.vertical-menu {
  width: 200px; /* Set a width if you like */
}

.vertical-menu a {
  background-color: #eee; /* Grey background color */
  color: black; /* Black text color */
  display: block; /* Make the links appear below each other */
  padding: 12px; /* Add some padding */
  text-decoration: none; /* Remove underline from links */
}

.vertical-menu a:hover {
  background-color: #ccc; /* Dark grey background on mouse-over */
}

.vertical-menu a.active {
  background-color: #4CAF50; /* Add a green color to the "active/current" link */
  color: white;
}
</style>
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%
            Alumno a = (Alumno)request.getSession().getAttribute("alumnox");
        %>
        <div class="topnav">
            <a class="active" href="#home">Home</a>
            <a href="#news">News</a>
            <a href="#contact">Contact</a>
            <a href="#about">About</a>
            <a href="#"><%=a.getNombre()%></a>
            <a href="cerrarSesion">Cerrar Sesión</a>
        </div>
            <h1>::Alumnos</h1>
            <%
                ArrayList<Alumno> lista = (ArrayList<Alumno>)request.getAttribute("alumnosx");
            %>
            <div class="container">            
                <table class="table">
                  <thead>
                    <tr>
                      <th>Codigo</th>
                      <th>Nombre</th>
                      <th>Apellido Paterno</th>
                      <th>Apellido Materno</th>
                      <th>Foto</th>
                    </tr>
                  </thead>
                  <tbody>
                    <%for(Alumno x:lista){%>
                    <tr>
                        <td><%=x.getCodal()%></td>
                        <td><%=x.getNombre()%></td>
                        <td><%=x.getApaterno()%></td>
                        <td><%=x.getAmaterno()%></td>
                        <td>
                            <img src="fotos/<%=x.getFoto()%>" height="50px">
                        </td>
                    </tr>
                    <%}%>
                  </tbody>
                </table>
              </div>
    </body>
</html>

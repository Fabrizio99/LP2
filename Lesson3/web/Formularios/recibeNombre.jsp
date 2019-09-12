<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Recibe datos del formulario</h1>
        <%
            // para capturar datos del formulario
            String nom = request.getParameter("txtnom");
        %>
        <h1>Nombre: <%=nom%></h1>
    </body>
</html>

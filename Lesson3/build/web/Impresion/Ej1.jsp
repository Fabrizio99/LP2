<%-- 
    Document   : Ej1
    Created on : 12/09/2019, 08:21:27 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../CSS/style.css">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- delimitador para incrustar codigo Java-->
        <%
            String saludo = "Hola mundo";
        %>
        <h2 id="saludo"><%=saludo%></h2>
    </body>
</html>

<%-- 
    Document   : Ej4
    Created on : 05/09/2019, 11:58:15 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="jquery-3.4.1.js"></script>
        <script>
            $(function(){
                $('#button').keyup(leer);
            })
            function leer(){
                $('#container').text($('#button').val());
            }
        </script>
    </head>
    <body>
        <h1>Hello World!</h1>
        <input type="text" id="button">
        <div id="container"></div>
    </body>
</html>

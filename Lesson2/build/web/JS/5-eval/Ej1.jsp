<%-- 
    Document   : Ej1
    Created on : 05/09/2019, 09:39:58 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function evaluar(){
                //eval recoge una cadena que convierte en un codigo valido que despues ejecuta
                document.frmx.resultado.value=eval(frmx.expresion.value)
            }
        </script>
    </head>
    <body>
        <form name="frmx">
            Ingrese expresión matemática
            <input type="text" name="expresion"><br>
            <input type="text" name="resultado" disabled><br>
            <input type="button" value="enviar" onclick="evaluar()">
        </form>
    </body>
</html>

<%-- 
    Document   : Ej2
    Created on : 05/09/2019, 09:52:54 AM
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
                document.form.result.value =  eval(document.form.input1.value+"+"+document.form.input2.value)
            }
        </script>
    </head>
    <body>
        <form name="form">
            <h2>Suma</h2>
            <label>Numero 1
                <input type="text" name="input1">
            </label><br>
            <label>Numero 2
                <input type="text" name="input2">
            </label><br>
            <input type="button" value="Calcular" onclick="evaluar()"><br>
            Resultado <input type="text" disabled name="result">
        </form>
    </body>
</html>

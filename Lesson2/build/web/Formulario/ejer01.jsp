<%-- 
    Document   : ejer01
    Created on : 05/09/2019, 08:49:41 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="estilos.css">
        <link href="https://fonts.googleapis.com/css?family=Manjari&display=swap" rel="stylesheet">
        <title>Formularios</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="../index.jsp" method="post">
            Nombre<input type="text" name="txtnom"><br>
            Sexo<input type="radio" name="sexo">Masculino
            <input type="radio" name="sexo">Femenino<br>
            <select name="especialidad" multiple>
                <option >Ing. Sistemas</option>
                <option selected>Administración</option>
                <option>Ing. Ambiental</option>
            </select>
            <br>
            <!--Hobbies
            <input type="checkbox" name="dep" value="futbol">Futbol<br>
            <input type="checkbox" name="dep" value="futbol">Ciclismo<br>
            <input type="checkbox" name="dep" value="futbol">Voley<br>
            <input type="checkbox" name="dep" value="futbol">Parapente<br>-->
            <input type="submit" value="asd" id="btn-enviar">
        </form>
    </body>
</html>

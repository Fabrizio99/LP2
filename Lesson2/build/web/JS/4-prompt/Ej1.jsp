<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    </body>
    <script>
        var nombre = prompt('Nombre')
        var color = prompt('Color')
        if(nombre){
            document.write("<h1 style=color:"+color+">Bienvenido "+nombre+"</h1>")
        }
    </script>
</html>

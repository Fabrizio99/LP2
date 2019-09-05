<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function saludo(nombre,color){
                document.write("<h1 style=color:"+color+">"+nombre+"</h1>");
            }
        </script>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
    <script>
        saludo('Hola','blue')
    </script>
</html>

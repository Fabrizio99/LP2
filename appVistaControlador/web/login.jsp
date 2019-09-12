<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="ServletUsuario" method="post">
            <table>
                <tr>
                    <td>Usuario</td>
                    <td><input type="text" name="txtuser"></td>
                </tr>
                <tr>
                    <td>Contraseña</td>
                    <td><input type="text" name="txtpass"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Aceptar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>

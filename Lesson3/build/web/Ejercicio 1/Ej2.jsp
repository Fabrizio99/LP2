<%-- 
    Document   : Ej2
    Created on : 12/09/2019, 08:37:07 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%for(int i=0;i<6;i++){%>
            <h<%=i+1%>>Hola Mundo</h<%=i+1%>>
        <%}%>
    </body>
</html>

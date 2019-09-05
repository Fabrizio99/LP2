<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="jquery-3.4.1.js"></script>
        <script>
            $(function(){
                $('#btn-sumar').on('click',suma)
            })
            function suma(){
                var n1 = parseInt($('#txtnum1').val());
                var n2 = parseInt($('#txtnum2').val());
                //$('#result').text(n1+n2)
                $('#result').html('<h1>'+(n1+n2)+'</h1>')
            }
        </script>
    </head>
    <body>
        <h1 id="titulo"></h1>
        <input type="text" id="txtnum1"><br>
        <input type="text" id="txtnum2"><br>
        <input type="button" value="sumar" id="btn-sumar">
        <div id="result"></div>
    </body>
</html>

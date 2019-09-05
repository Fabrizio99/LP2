<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="jquery-3.4.1.js"></script>
        <script>
            /*$(function(){
                $("#titulo").text(('Hola mundo'))
            });*/
            $(function (){
                $('.oc').on('click',function(){
                    $('.contenedor').hide('slow');
                })
                $('.vi').on('click',function(){
                    $('.contenedor').show('slow');
                })
            })
        </script>
    </head>
    <body>
        <h1 id="titulo"></h1>
        <a href="#" class="oc">Ocultar</a>
        <a href="#" class="vi">Visualizar</a>
        <hr>
        <div class="contenedor">
            Compressed and uncompressed copies of jQuery files are available.<br>
            The uncompressed file is best used during development or debugging;<br>
            the compressed file saves bandwidth and improves performance in production.<br>
            You can also download a sourcemap file for use when debugging with a compressed file.<br>
            The map file is not required for users to run jQuery, it just improves the developer's debugger experience.<br>
            As of jQuery 1.11.0/2.1.0 the //# sourceMappingURL comment is not included in the compressed file.
        </div>
    </body>
</html>

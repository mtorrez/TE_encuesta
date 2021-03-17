<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Encuesta para desarrolladores</h1>
        <form action="Procesa" method="post">
            Nombre: <input type="text" name="nombre" />
            <br>
            Seleccione los lenguajes de su preferencia:
            <br>
            <input type="checkbox" name="lenguajes" value="Java">Java
            <br>
            <input type="checkbox" name="lenguajes" value="Python" />Python
            <br>
            <input type="checkbox" name="lenguajes" value="PHP" />PHP
            <br>
            <input type="checkbox" name="lenguajes" value="CSharp" />CSharp
            <br>
            <input type="submit">
        </form>
    </body>
</html>

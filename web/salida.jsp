<%@page import="com.emergentes.Encuesta"%>
<%
    Encuesta e = new Encuesta();
    
    e = (Encuesta)request.getAttribute("encu1");
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Datos de la encuesta</h1>
        <p>Gracias por llenar la encuesta</p>
        <p>Los datos recibidos son:</p>
        <p>Nombre: <%= e.getNombre() %></p>
        <p>Los lenguajes de su preferencia son:</p>
        <ul>
        <%
        if (e.getLenguajes().length != 0){
            for(int i = 0; i < e.getLenguajes().length; i++){
        %>
            <li><%= e.getLenguajes()[i] %></li>
        <%
            }
        }
        %>
        </ul>
        <a href="index.jsp">Volver</a>
    </body>
</html>

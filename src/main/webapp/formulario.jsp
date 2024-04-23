<%-- 
    Document   : formulario
    Created on : 23 abr. 2024, 09:00:02
    Author     : Frank Lopez Cardenas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reserva Tu Cita</title>
    </head>
    <body>
        <h1>Hacer una Cita</h1>
        <form action="ProgramarCita" method="post">
            Nombre: <input type="text" name="nombre" value="<%= request.getParameter("nombre") %>"><br>
            Correo electrónico: <input type="email" name="correo" value="<%= request.getParameter("correo") %>"><br>
            Fecha de la cita: <input type="date" name="fecha" value="<%= request.getParameter("fecha") %>"><br>
            Hora de la cita: <input type="time" name="hora" value="<%= request.getParameter("hora") %>"><br>
            <input type="submit" value="Programar Cita">
        </form>
        <%--  código Java  --%>
        <% 
            String mensaje = ""; 
            if (request.getParameter("nombre") != null) {
                mensaje = "¡Hola, " + request.getParameter("nombre") + "! Gracias por programar una cita.";
            }
        %>
        <p><%= mensaje %></p>
    </body>
</html>

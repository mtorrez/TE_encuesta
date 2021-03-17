package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashSet;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Procesa", urlPatterns = {"/Procesa"})
public class Procesa extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String lenguajes[] = request.getParameterValues("lenguajes");
        
        Encuesta encu = new Encuesta();
        
        encu.setNombre(nombre);
        encu.setLenguajes(lenguajes);
        
        request.setAttribute("encu1", encu);
        
        request.getRequestDispatcher("salida.jsp").forward(request, response);
    }
}

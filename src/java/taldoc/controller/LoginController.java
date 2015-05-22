/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package taldoc.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author edpena
 */
public class LoginController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String error = "Credenciales invalidas.";
        RequestDispatcher rd;
        String usuario = "";
        String contra = "";
        
        try
        {
            usuario = request.getParameter("usuario");
            contra = request.getParameter("contra");
        }
        catch(Exception e)
        {
            request.setAttribute("mensaje", error);
            rd  = request.getRequestDispatcher("faces/Login.jsp");
            rd.forward(request, response);
        }
        
        //VALIDACION DEL USUARIO EN LA BASE DE DATOS
        if(usuario.equals("taldoc") && contra.equals("sherpa"))
        {
            request.setAttribute("empleado", "Edgar Omar Peña de Alba");
            rd = request.getRequestDispatcher("faces/Inicio.jsp");
            rd.forward(request, response);
        }
        else
        {
            request.setAttribute("mensaje", error);
            rd  = request.getRequestDispatcher("faces/Login.jsp");
            rd.forward(request, response);
        }
            
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

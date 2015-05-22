/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package taldoc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author edpena
 */
public class InicioController extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        RequestDispatcher rd;
        String opcion = "";
        
        try
        {
            opcion = request.getParameter("opcion");
        }
        catch(Exception e)
        {
            rd  = request.getRequestDispatcher("faces/Inicio.jsp");
            rd.forward(request, response);
        }
        
        
        if(opcion == null)
        {
            rd  = request.getRequestDispatcher("faces/Inicio.jsp");
            rd.forward(request, response);
        }
        
        switch(opcion)
        {
            case "bitacora":
            {
                ArrayList<String> empleados = new ArrayList<>();
                ArrayList<String> materiales = new ArrayList<>();
                ArrayList<String> eventos = new ArrayList<>();
                ArrayList<String> salones = new ArrayList<>();
                
                empleados.add("Gloria Luz Castillo Barrera");
                empleados.add("Edgar Omar Peña de Alba");
                empleados.add("Janete Sanchez Mejía");
                empleados.add("Alejandro Rodriguez Rodriguez");
                empleados.add("Valentín Misael Partida Bañales");
                
                materiales.add("pluma");
                materiales.add("pizarrón");
                materiales.add("control");
                materiales.add("proyector");
                materiales.add("lampara");
                materiales.add("monitor");
                materiales.add("gabinete");
                materiales.add("ratón");
                materiales.add("teclado");
                materiales.add("bocinas");
                materiales.add("spliter");
                
                eventos.add("Perdida");
                eventos.add("Descompostura");
                
                salones.add("I101");salones.add("I102");salones.add("I103");salones.add("I104");salones.add("I105");salones.add("I106");
                salones.add("I201");salones.add("I202");salones.add("I203");salones.add("I204");salones.add("I205");salones.add("I206");
                salones.add("I301");salones.add("I302");salones.add("I303");salones.add("I304");salones.add("I305");salones.add("I306");
                salones.add("I101");salones.add("J102");salones.add("J103");salones.add("J104");salones.add("J105");salones.add("J106");salones.add("J107");salones.add("J108");salones.add("J109");salones.add("J110");salones.add("J111");
                salones.add("I201");salones.add("J202");salones.add("J203");salones.add("J204");salones.add("J205");salones.add("J206");salones.add("J107");salones.add("J108");salones.add("J109");salones.add("J110");salones.add("J111");
                
                request.setAttribute("empleados", empleados);
                request.setAttribute("eventos", eventos);
                request.setAttribute("materiales", materiales);
                request.setAttribute("salones", salones);
                rd  = request.getRequestDispatcher("faces/Bitacora.jsp");
                rd.forward(request, response);
            }
            case "lamapras":
            {
                rd  = request.getRequestDispatcher("faces/Lamaparas.jsp");
                rd.forward(request, response);
            }
            default:
            {
                rd  = request.getRequestDispatcher("faces/Inicio.jsp");
                rd.forward(request, response);
            }
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

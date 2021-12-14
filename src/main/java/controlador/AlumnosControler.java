/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.alumnos;
import modelo.alumnosDAO;

/**
 *
 * @author herna
 */
@WebServlet(name = "AlumnosControler", urlPatterns = {"/AlumnosControler"})
public class AlumnosControler extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

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
    throws ServletException, IOException 
    {
        alumnosDAO alumnosDao=new alumnosDAO();
        String accion;
        RequestDispatcher dispatcher=null;
        accion=request.getParameter("accion");
        
        if(accion==null||accion.isEmpty())
        {
            dispatcher = request.getRequestDispatcher("vistas/alumnos.jsp");
           
        }
            
        
         else if(accion.equals("modificar"))
        {
           dispatcher=request.getRequestDispatcher("vistas/modificar.jsp");
           
           
        }
           
                
        else if(accion.equals("actualizar"))
        {
            int id=Integer.parseInt(request.getParameter("id"));
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String mail = request.getParameter("mail");
            alumnos alumno=new alumnos(id,nombre,apellido,mail);
            alumnosDao.actualizaralumno(alumno);
            
           dispatcher=request.getRequestDispatcher("vistas/alumnos.jsp");
           
           
        }
        
        
        else if(accion.equals("eliminar"))
        {
            int id=Integer.parseInt(request.getParameter("id"));
            alumnosDao.eliminaralumno(id);
            dispatcher=request.getRequestDispatcher("vistas/alumnos.jsp");
        }
        
        else if(accion.equals("nuevo"))
        {
            dispatcher=request.getRequestDispatcher("vistas/nuevo.jsp");
        }
        
        else if(accion.equals("insert"))
        {
            String nombre=request.getParameter("nombre");
            String apellido=request.getParameter("apellido");
            String mail=request.getParameter("mail");
            alumnos alumno=new alumnos (0,nombre,apellido,mail);
            alumnosDao.insertaralumno(alumno);
                
            dispatcher=request.getRequestDispatcher("vistas/alumnos.jsp");
               
        }
                
        else
        {
            dispatcher=request.getRequestDispatcher("vistas/alumnos.jsp");
                
        }
         dispatcher.forward(request,response);
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
            throws ServletException, IOException 
    {
        doGet(request,response);
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

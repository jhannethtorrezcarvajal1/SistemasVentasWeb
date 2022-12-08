/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Empleado;
import Modelo.EmpleadoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author KB
 */
public class Validar extends HttpServlet {

    
    EmpleadoDAO edao=new EmpleadoDAO();
    Empleado em=new Empleado();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }   
    

      @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
    throws ServletException, IOException {
        processRequest(request, response); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String accion=request.getParameter("accion");
       if(accion.equalsIgnoreCase("Ingresar")){
           String user=request.getParameter("txtuser");
           String pass=request.getParameter("txtpass");
           em=edao.validar(user, pass);
           if(em.getUser()!=null){
           request.setAttribute("usuario", em);
           request.getRequestDispatcher("Controlador?menu=Principal").forward(request, response);
           }else{
               request.getRequestDispatcher("Principal.jsp").forward(request, response);
           }               
       }
       else{
           request.getRequestDispatcher("Principal.jsp").forward(request, response);
       
       }
    }




  
 
   

   
   
}

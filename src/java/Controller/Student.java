/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Connection;

/**
 *
 * @author rodolfo
 */
@WebServlet(name = "Student", urlPatterns = {"/Student"})
public class Student extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Student</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Student at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id = Integer.parseInt(request.getParameter("id"));
        String approved = request.getParameter("approved");
        
        PrintWriter out = response.getWriter();
        try{
            Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/escola", "root", ""); 
            
            PreparedStatement ps = conn.prepareStatement("UPDATE escola.alunos SET aprovado='" + approved +  "' WHERE id=" + id +  ";");
            ps.executeUpdate();
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>oi</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>You are sucessfully registered </h1>");
            out.println("</body>");
            out.println("</html>");
        }catch(Exception se) {
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>oi</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Erro" + se + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

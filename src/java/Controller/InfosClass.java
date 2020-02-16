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
import java.sql.Connection;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.*;
import javax.servlet.*;  

@WebServlet(name = "InfosClass", urlPatterns = {"/InfosClass"})
public class InfosClass extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet InfosClass</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet InfosClass at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
    
        try{ 
            Class.forName("com.mysql.jdbc.Driver");

            Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/escola", "root", "");
            String querySelectAll = "SELECT t.id, a.nome, m.nota FROM escola.turmas as t\n" +
                                    "inner join escola.alunos as a\n" +
                                    "inner join escola.matriculas as m\n" +
                                    "where m.alunos_id = a.id \n" +
                                    "AND m.turmas_id = t.id";

            Statement statement = conn.createStatement();
            ResultSet r = statement.executeQuery(querySelectAll);
            RequestDispatcher rd = request.getRequestDispatcher("infosClass.jsp"); 
            
            while (r.next()) {
                request.setAttribute("name", r.getString("a.nome"));
            }
            rd.forward(request, response);
            
        }catch(Exception se) {
            out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>oi</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Erro</h1>");
                out.println("</body>");
                out.println("</html>");
        }
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

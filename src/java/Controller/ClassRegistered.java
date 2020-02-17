/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.sql.Connection;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;

@WebServlet(name = "ClassRegistered", urlPatterns = {"/ClassRegistered"})
public class ClassRegistered extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ClassRegistered</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ClassRegistered at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id_turma = Integer.parseInt(request.getParameter("classId"));
        int id_aluno = Integer.parseInt(request.getParameter("studentId"));
        
        PrintWriter out = response.getWriter();
        try{
            Class.forName("com.mysql.jdbc.Driver");
            
            DateFormat formatter = new SimpleDateFormat("YYYY/MM/DD");
            Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/escola", "root", ""); 
            
            long millis = System.currentTimeMillis();
            Date date1 = new Date(millis);
            
            PreparedStatement ps = conn.prepareStatement("INSERT INTO escola.matriculas (alunos_id,turmas_id,data_matricula) "
                    + "VALUES (" + id_aluno +  "," + id_turma + ", '2020-01-20');");
            ps.executeUpdate();
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Inscrição realizada!</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Inscrição realizada!</h1>");
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

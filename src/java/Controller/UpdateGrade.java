/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author rodolfo
 */
@WebServlet(name = "UpdateGrade", urlPatterns = {"/UpdateGrade"})
public class UpdateGrade extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        int id = Integer.parseInt(request.getParameter("id"));
        int grade = Integer.parseInt(request.getParameter("grade"));
        

        try{ 
            String dbDriver = "com.mysql.jdbc.Driver"; 
            String dbURL = "jdbc:mysql:// localhost:3306/"; 
            String dbName = "escola"; 
            String dbUsername = "root"; 
            String dbPassword = ""; 
            
            Class.forName(dbDriver);
            
            Connection conn = DriverManager.getConnection(dbURL + dbName, dbUsername, dbPassword); 
             PreparedStatement ps = conn.prepareStatement ("UPDATE escola.matriculas\n" +
            "SET nota=?\n" +
            "WHERE alunos_id=" + id + ";");
    
            ps.setInt(1, grade);
            
            int i = ps.executeUpdate();
            
            if(i > 0) {
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Turma</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Nota atualizada com sucesso!</h1>");
                out.println("<a href='http://localhost:8080/cursosLeroLero/index.jsp' class='btn btn-primary'>Voltar</a>");
                out.println("</body>");
                out.println("</html>");
            } else{
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>oi</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>You are sucessfully registered</h1>");
                out.println("</body>");
                out.println("</html>");
            }
        
        }
        catch(Exception se) {
            out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>oi</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Erro " + se + "</h1>");
                out.println("</body>");
                out.println("</html>");
        }
    }
}

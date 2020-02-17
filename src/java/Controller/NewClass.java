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

@WebServlet(name = "NewClass", urlPatterns = {"/NewClass"})
public class NewClass extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        int instructors_id = Integer.parseInt(request.getParameter("turma_instrutores_id"));
        int cursos_id = Integer.parseInt(request.getParameter("turma_cursos_id"));
        int carga_horaria = Integer.parseInt(request.getParameter("turma_carga_horaria"));
        

        try{ 
            String dbDriver = "com.mysql.jdbc.Driver"; 
            String dbURL = "jdbc:mysql:// localhost:3306/"; 
            String dbName = "escola"; 
            String dbUsername = "root"; 
            String dbPassword = ""; 
            
            Class.forName(dbDriver);
            
            Connection conn = DriverManager.getConnection(dbURL + dbName, dbUsername, dbPassword); 
             PreparedStatement ps = conn.prepareStatement
                        ("insert into turmas values(null,?,?,'2020-01-20','2020-01-20',?)");
    
            ps.setInt(1, instructors_id);
            ps.setInt(2, cursos_id);
            ps.setInt(3, carga_horaria);
            
            int i = ps.executeUpdate();
            
            if(i > 0) {
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Turma</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Turma registrada com sucesso!</h1>");
                out.println("<a href='http://localhost:8080/cursosLeroLero/index.jsp' class='btn btn-primary'>Voltar</a>");
                out.println("</body>");
                out.println("</html>");
            } else{
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Turma</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Turma cadastrada com sucesso!</h1>");
                out.println("<a href='http://localhost:8080/cursosLeroLero/index.jsp' class='btn btn-primary'>Voltar</a>");
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
                out.println("<h1>Erro" + se + "</h1>");
                out.println("</body>");
                out.println("</html>");
        }
    }
}

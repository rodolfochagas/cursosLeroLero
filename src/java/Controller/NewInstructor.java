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
@WebServlet(name = "NewInstructor", urlPatterns = {"/NewInstructor"})
public class NewInstructor extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String name = request.getParameter("instrutor_nome");
        String email = request.getParameter("instrutor_email");
        int valor = Integer.parseInt(request.getParameter("instrutor_valor"));
        String senha = request.getParameter("instrutor_senha");  
        String experiencia = request.getParameter("instrutor_esperiencia");

        try{ 
            String dbDriver = "com.mysql.jdbc.Driver"; 
            String dbURL = "jdbc:mysql:// localhost:3306/"; 
            String dbName = "escola"; 
            String dbUsername = "root"; 
            String dbPassword = ""; 
            
            Class.forName(dbDriver);
            
            Connection conn = DriverManager.getConnection(dbURL + dbName, dbUsername, dbPassword); 
             PreparedStatement ps = conn.prepareStatement
                        ("insert into instrutores values(null,?,?,?,?,?,?)");
    
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setInt(3, valor);
            ps.setString(4, email);
            ps.setString(5, senha);
            ps.setString(6, experiencia);
            
            int i = ps.executeUpdate();
            
            if(i > 0) {
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>oi</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Novo instrutor registrado com sucesso!</h1>");
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
                out.println("<h1>You are sucessfully registered </h1>");
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

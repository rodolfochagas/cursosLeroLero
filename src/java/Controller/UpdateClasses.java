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
import java.sql.Date;  

@WebServlet(name = "UpdateClasses", urlPatterns = {"/UpdateClasses"})
public class UpdateClasses extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        int id = Integer.parseInt(request.getParameter("id"));
        int cursos_id = Integer.parseInt(request.getParameter("cursos_id"));
        int instrutores_id = Integer.parseInt(request.getParameter("instrutores_id"));
        Date data_inicio = Date.valueOf(request.getParameter("data_inicio"));
        Date data_final = Date.valueOf(request.getParameter("data_final"));
        int carga_horaria = Integer.parseInt(request.getParameter("carga_horaria"));
        int preco = Integer.parseInt(request.getParameter("preco"));
        
        try{ 
            String dbDriver = "com.mysql.jdbc.Driver"; 
            String dbURL = "jdbc:mysql:// localhost:3306/"; 
            String dbName = "escola"; 
            String dbUsername = "root"; 
            String dbPassword = ""; 
            
            Class.forName(dbDriver);
            
            Connection conn = DriverManager.getConnection(dbURL + dbName, dbUsername, dbPassword); 
             PreparedStatement ps = conn.prepareStatement ("UPDATE escola.turmas\n" +
            "SET cursos_id=?, instrutores_id=?, data_inicio=?, data_final=? ,carga_horaria=?, preco=? \n" +
            "WHERE id=" + id + ";");
    
            ps.setInt(1, cursos_id);
            ps.setInt(2, instrutores_id);
            ps.setDate(3, data_inicio);
            ps.setDate(4, data_final);
            ps.setInt(5, carga_horaria);
            ps.setInt(6, preco);
            
            int i = ps.executeUpdate();
            
            if(i > 0) {
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>oi</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>You are sucessfully registered </h1>");
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

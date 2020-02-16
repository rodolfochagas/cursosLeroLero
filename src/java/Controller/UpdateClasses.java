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
//        String data_inicio = request.getParameter("data_inicio");
//        String data_final = request.getParameter("data_final");
        int carga_horaria = Integer.parseInt(request.getParameter("carga_horaria"));
        String cpf = request.getParameter("cpf");
        String celular = request.getParameter("celular");
        String endereco = request.getParameter("endereco");
        String cidade = request.getParameter("cidade");
        String bairro = request.getParameter("bairro");
        String cep = request.getParameter("cep");
        

        try{ 
            String dbDriver = "com.mysql.jdbc.Driver"; 
            String dbURL = "jdbc:mysql:// localhost:3306/"; 
            String dbName = "escola"; 
            String dbUsername = "root"; 
            String dbPassword = ""; 
            
            Class.forName(dbDriver);
            
            Connection conn = DriverManager.getConnection(dbURL + dbName, dbUsername, dbPassword); 
             PreparedStatement ps = conn.prepareStatement ("UPDATE escola.alunos\n" +
            "SET cpf=?, nome=?, email=?, celular=?, endereco=?, cidade=?, bairro=?, cep=?\n" +
            "WHERE id=" + id + ";");
    
            ps.setString(1, cpf);
            ps.setString(2, name);
            ps.setString(3, email);
            ps.setString(4, celular);
            ps.setString(5, endereco);
            ps.setString(6, cidade);
            ps.setString(7, bairro);
            ps.setString(8, cep);
            
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
                out.println("<h1>You are sucessfully registered " + cidade + id + " </h1>");
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
                out.println("<h1>Erro " + se + id + cpf + "</h1>");
                out.println("</body>");
                out.println("</html>");
        }
    }
}

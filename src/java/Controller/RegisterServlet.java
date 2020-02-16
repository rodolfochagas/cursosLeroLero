package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.io.PrintWriter;
import java.sql.DriverManager;
import javax.servlet.annotation.WebServlet;
import java.sql.PreparedStatement;


@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {

    public RegisterServlet(){}
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String name = request.getParameter("aluno_nome");
        String email = request.getParameter("aluno_email");
        String password = request.getParameter("aluno_senha");
        String cpf = request.getParameter("aluno_cpf");
        String celular = request.getParameter("aluno_celular");
        String endereco = request.getParameter("aluno_endereco");
        String cidade = request.getParameter("aluno_cidade");
        String bairro = request.getParameter("aluno_bairro");
        String cep = request.getParameter("aluno_cep");
        CriptografaSenhaMD5 md5Criptografia = new CriptografaSenhaMD5();

        try{ 
            String dbDriver = "com.mysql.jdbc.Driver"; 
            String dbURL = "jdbc:mysql:// localhost:3306/"; 
            String dbName = "escola"; 
            String dbUsername = "root"; 
            String dbPassword = ""; 
            
            Class.forName(dbDriver);
            
            Connection conn = DriverManager.getConnection(dbURL + dbName, dbUsername, dbPassword); 
             PreparedStatement ps = conn.prepareStatement
                        ("insert into alunos values(null,?,?,?,?,?,?,?,?,?,?,null,'f')");
    
            ps.setString(1, cpf);
            ps.setString(2, name);
            ps.setString(3, email);
            ps.setString(4, celular);
            ps.setString(5, email);
            ps.setString(6, md5Criptografia.criptografar(password));
            ps.setString(7, endereco);
            ps.setString(8, cidade);
            ps.setString(9, bairro);
            ps.setString(10, cep);
            
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
                out.println("<h1>Erro</h1>");
                out.println("</body>");
                out.println("</html>");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

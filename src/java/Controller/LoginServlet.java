package Controller;


import Model.AuthenticateUser;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String email = request.getParameter("email");
        String password = request.getParameter("senha");
        
        if(AuthenticateUser.checkUser(email, password)) {
            HttpSession session = request.getSession();
            session.setAttribute("email",email);
            
            try {
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/escola","root","");
                PreparedStatement ps = con.prepareStatement("SELECT id FROM escola.alunos WHERE email=?");
                ps.setString(1, email);       
                ResultSet rs = ps.executeQuery();
                rs.next();
                int id = rs.getInt("id");
                session.setAttribute("id", id);
                
            } catch(Exception e) {
                e.printStackTrace();
            }

            RequestDispatcher rs = request.getRequestDispatcher("index.jsp");
            rs.forward(request, response);
        }
        else {
           out.println("<h1>Usuário ou senha incorretos</h1>");
           RequestDispatcher rs = request.getRequestDispatcher("index.jsp");
           rs.include(request, response);
        }  
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

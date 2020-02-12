package Model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import View.User;
import Model.LoginConnection;
import javax.servlet.annotation.WebServlet;

public class Login extends javax.servlet.http.HttpServlet{
    private Connection conn;
    public void tryConnection(){
       try {
           conn = LoginConnection.createConnection();
       }
       catch( Exception e ) {
           System.out.println("Erro criação de conexao DAO");
           System.out.println(e);
       }
    }
    
    public User getUser (String name){
        User user = new User();
        try {
            String sql = "SELECT * FROM contato WHERE id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ResultSet rs = ps.executeQuery();
            
            if ( rs.next() ) {
                user.setPassword(rs.getString("password"));
                user.setEmail( rs.getString("email") );
            }
            
            System.out.println(user);
            
        } catch( SQLException e ) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        return user;
    }
}

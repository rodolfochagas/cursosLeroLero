package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class LoginConnection {
    
    private static Connection conn = null;
    
    public static Connection createConnection() throws SQLException {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Foi carregado");
            
            conn = DriverManager.getConnection("jdbc:mysql://localhost:8080/escola");
            System.out.println("Conexão realizada");
        } catch(ClassNotFoundException e){
            System.out.println("Não foi localizada");
        }
        
        return conn;
    }
}

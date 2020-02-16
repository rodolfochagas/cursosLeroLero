/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Connection;


@WebServlet(name = "DeleteStudent", urlPatterns = {"/DeleteStudent"})
public class DeleteStudent extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DeleteStudent</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DeleteStudent at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id = Integer.parseInt(request.getParameter("id"));
        int type = Integer.parseInt(request.getParameter("type"));
//        String type = request.getParameter("type");
        
        PrintWriter out = response.getWriter();
                
        try {
                        
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/escola", "root", "");
            
            String queryDeleteRegistration = "DELETE FROM escola.matriculas \n" + "where turmas_id=(SELECT t.id from escola.turmas t \n" + "where t.cursos_id=" + id + ");";
            String queryDeleteClasses = "DELETE FROM escola.turmas  WHERE cursos_id=" + id + ";";
            String queryDeteteCourses = "DELETE FROM escola.cursos WHERE id=" + id + ";";
            String queryDeleteStudent = "DELETE FROM escola.alunos WHERE id="+ id + ";";
            String queryDeleteInstructor = "DELETE FROM escola.instrutores where id="+ id + ";";

            PreparedStatement psRegistrations = conn.prepareStatement(queryDeleteRegistration);
            PreparedStatement psDeleteClasses = conn.prepareStatement(queryDeleteClasses);
            PreparedStatement psDeteteCourses = conn.prepareStatement(queryDeteteCourses);
            PreparedStatement psDeleteStudent = conn.prepareStatement(queryDeleteStudent);
            
            int i = 0;
            
            switch (type) {
                case 0:
                    i = psDeleteStudent.executeUpdate();
                    break;
                case 1:
                    i = psRegistrations.executeUpdate();
                    psDeleteClasses.executeUpdate();
                    psDeteteCourses.executeUpdate();
                    break;
                case 2:
                    i = psRegistrations.executeUpdate();
                    psDeleteClasses.executeUpdate();
 
                    break;
                    
//                query = "where turmas_id=(SELECT t.id from escola.turmas t\n" +
//                        "where t.cursos_id=" + id + ")\n" +
//                        "\n" +
//                        "DELETE FROM escola.turmas\n" +
//                        "WHERE cursos_id=" + id + ")\n";
                    
//                query = "where turmas_id=(SELECT t.id from escola.turmas t\n" +
//                        "where t.cursos_id=" + id + ")\n" +
//                        "\n";
                case 3:
                    break;
                default:
                    break;
            }
            
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
                out.println("<h1>Erro </h1>");
                out.println("</body>");
                out.println("</html>");
            }

        }catch(Exception se) {
            System.out.print(se + "Oi");
            
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DeleteStudent</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DeleteStudent at " + se + " " + type + "</h1>");
            out.println("</body>");
            out.println("</html>");
        
        }
        
        
            
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

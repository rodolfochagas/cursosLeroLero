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


@WebServlet(name = "Delete", urlPatterns = {"/Delete"})
public class Delete extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Delete</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Delete at " + request.getContextPath() + "</h1>");
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
            
            String queryDeleteInstructor = "DELETE FROM escola.instrutores where id="+ id + ";";
            String queryDeleteRegistration_courses = "DELETE FROM escola.matriculas \n" + "where turmas_id=(SELECT t.id from escola.turmas t \n" + "where t.cursos_id=" + id + ");";
            String queryDeleteClasses_courses = "DELETE FROM escola.turmas  WHERE cursos_id=" + id + ";";
            String queryDeleteRegistration_classes = "DELETE FROM escola.matriculas\n" + "where turmas_id=" + id + ";";
            String queryDeleteClasses_classes = "DELETE FROM escola.turmas WHERE id=" + id + ";";
            String queryDeleteRegistration_instructors = "DELETE FROM escola.matriculas\n" + "where turmas_id= (SELECT t.id from escola.turmas t\n" + "where t.instrutores_id="+ id + ")";
            String queryDeleteClasses_instructors = "DELETE FROM escola.turmas  WHERE instrutores_id=" + id + ";";
            String queryDeteteCourses = "DELETE FROM escola.cursos WHERE id=" + id + ";";
            String queryDeleteStudent = "DELETE FROM escola.alunos WHERE id="+ id + ";";
            String queryDeleteRegistration_student = "DELETE FROM escola.matriculas \n" + "where alunos_id=" + id + ";";
            
            PreparedStatement psRegistrations_courses = conn.prepareStatement(queryDeleteRegistration_courses);
            PreparedStatement psDeleteClasses_courses = conn.prepareStatement(queryDeleteClasses_courses);
            PreparedStatement psRegistrations_classes = conn.prepareStatement(queryDeleteRegistration_classes);
            PreparedStatement psDeleteClasses_classes = conn.prepareStatement(queryDeleteClasses_classes);
            PreparedStatement psRegistrations_instructors = conn.prepareStatement(queryDeleteRegistration_instructors);
            PreparedStatement psDeleteClasses_instructors = conn.prepareStatement(queryDeleteClasses_instructors);
            PreparedStatement psDeteteCourses = conn.prepareStatement(queryDeteteCourses);
            PreparedStatement psDeleteStudent = conn.prepareStatement(queryDeleteStudent);
            PreparedStatement psDeleteStudent_matricula = conn.prepareStatement(queryDeleteRegistration_student);
            PreparedStatement psDeleteInstructor = conn.prepareStatement(queryDeleteInstructor);
            
            int i = 0;
            
            switch (type) {
                case 0:
//                  Students
                    psDeleteStudent_matricula.executeUpdate();
                    i = psDeleteStudent.executeUpdate();
                    break;
                case 1:
//                  Courses
                    psRegistrations_courses.executeUpdate();
                    psDeleteClasses_courses.executeUpdate();
                    i = psDeteteCourses.executeUpdate();
                    break;
                case 2:
//                  Classes
                    psRegistrations_classes.executeUpdate();
                    i = psDeleteClasses_classes.executeUpdate();
                    break;
                case 3:
//                  Instructors
                    psRegistrations_instructors.executeUpdate();
                    psDeleteClasses_instructors.executeUpdate();
                    i = psDeleteInstructor.executeUpdate();
                    break;
                default:
                    break;
            }
            
            if(i > 0) {
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Removido</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Removido com sucesso!</h1>");
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
            out.println("<title>Servlet Delete</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Delete at " + se + " " + type + "</h1>");
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

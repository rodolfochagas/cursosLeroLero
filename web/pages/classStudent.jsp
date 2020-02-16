<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,Controller.*,Model.*, java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.*, java.io.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./../styles/bootstrap.min.css">
        <title>Turmas</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <div class="navbar-header">
                    <img id="logoLero" src= "./../images/logo.png" alt="Imagem do Curso">
                </div>
                <ul class="nav justify-content-end">
                    <li class="nav-item">
                        <a class="nav-link btn-light" href="./../index.jsp">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn-light" href="./register.jsp">Registrar-se</a>
                    </li>
                </ul>
            </div>
	</nav>
        <div class="container">
        
        
            <table class="table">
                <thead>
                  <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Instrutor</th>
                    <th scope="col">Data de Início</th>
                    <th scope="col">Data Final</th>
                    <th scope="col">Carga Horária</th>
                    <th scope="col"></th>
                  </tr>
                </thead>
                <%  
                    int id_curso = Integer.parseInt(request.getParameter("courseId"));
                    int id_aluno = Integer.parseInt(request.getParameter("studentId"));
                    Class.forName("com.mysql.jdbc.Driver");

                    Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/escola", "root", ""); 

                    String selectCourse = "SELECT nome FROM escola.cursos WHERE id=" + id_curso;                    
                    Statement s_course = conn.createStatement();
                    ResultSet r_course =  s_course.executeQuery(selectCourse);
                    r_course.next();
                    
                    out.println("<h3>" + r_course.getString("nome") + "</h3>");
                    
                    String querySelect = "SELECT * FROM escola.turmas WHERE cursos_id=" + id_curso;
                    
                    Statement statement = conn.createStatement();
                    Statement s_instructor = conn.createStatement();
                    
                    ResultSet r_class = statement.executeQuery(querySelect);
                    
                    
                    String selectInstructor = null;
                    ResultSet r_instructor = null;

                    while (r_class.next()) {
                   
                        out.println("<tr>");
                        out.println("<th scope='row'>" + r_class.getString("id") + "</th>");
                        selectInstructor = "SELECT nome FROM escola.instrutores WHERE id=" + r_class.getString("instrutores_id");
                        r_instructor = s_instructor.executeQuery(selectInstructor);
                        r_instructor.next();
                        out.println("<td>" + r_instructor.getString("nome") + "</td>");
                        out.println("<td>" + r_class.getString("data_inicio") + "</td>");
                        out.println("<td>" + r_class.getString("data_final") + "</td>");
                        out.println("<td>" + r_class.getString("carga_horaria") + "</td>");
                        out.println("<td><a href='../ClassRegistered?classId=" + r_class.getString("id") + "&studentId=" + id_aluno + "&date=" + "' class='btn btn-warning'>Inscrever-se</a></td>");
                        out.println("<tr>");
            //                out.println("<a href='../Student?approved=t&id=" + r.getInt("id") + "' class='btn btn-success'>Aprovar</a>");
            //                out.println("<a href='../Student?approved=f&id=" + r.getInt("id") + "' class='btn btn-danger'>Reprovar</a>");
                        out.println("</div>");
                        out.println("</div>");
                        out.println("</tr>");
                    }

                %>
              </table>
        </div>
    </body>
</html>

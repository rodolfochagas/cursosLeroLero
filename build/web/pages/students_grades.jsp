<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,Controller.*,Model.*, java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.*, java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./../styles/bootstrap.min.css">
        <title>Meus Cursos</title>
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
                <th scope="col">Curso</th>
                <th scope="col">Turma</th>
                <th scope="col">Nota</th>
              </tr>
            </thead>
            <tbody>
              <% 
                Class.forName("com.mysql.jdbc.Driver");
            
                Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/escola", "root", ""); 
                String querySelect = "SELECT c.nome as curso, t.id as turma, m.nota as nota from escola.matriculas m \n" +
                                "join escola.cursos c \n" +
                                "join escola.turmas t \n" +
                                "where m.alunos_id = 2 \n" +
                                "and m.turmas_id = t.id \n" +
                                "and t.cursos_id = c.id";

                Statement statement = conn.createStatement();
                ResultSet r = statement.executeQuery(querySelect);

                while (r.next()) {
                    out.println("<tr>");
                    out.println("<td>" + r.getString("curso") + "</td>");
                    out.println("<td>" + r.getInt("turma") + "</td>");
                    out.println("<td>" + r.getInt("nota") + "</td>");
                    out.println("</tr>");
                }
              %>
            </tbody>
          </table>
        </div>
    </body>
</html>

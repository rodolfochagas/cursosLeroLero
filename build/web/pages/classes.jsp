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
                    <th scope="col">ID do instrutor</th>
                    <th scope="col">ID do curso</th>
                    <th scope="col">Data de inicio</th>
                    <th scope="col">Data Final</th>
                    <th scope="col">Carga Horaria</th>
                    <th scope="col"></th>
                  </tr>
                </thead>
                <tbody>
                  <% 

                    Class.forName("com.mysql.jdbc.Driver");

                    Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/escola", "root", "");
                    String querySelectAll = "SELECT * FROM escola.turmas";
                    Statement statement = conn.createStatement();
                    ResultSet r = statement.executeQuery(querySelectAll);
                    
              
                    while (r.next()) {
                        out.println("<tr>");
                        out.println("<th scope='row'>" + r.getInt("id") + "</th>");
                        out.println("<td>" + r.getInt("instrutores_id") + "</td>");
                        out.println("<td>" + r.getInt("cursos_id") + "</td>");
                        out.println("<td>" + r.getDate("data_inicio") + "</td>");
                        out.println("<td>" + r.getDate("data_final") + "</td>");
                        out.println("<td>" + r.getShort("carga_horaria") + "</td>");
                        out.println("<td><a href='./infos_class.jsp?id=" + r.getInt("id") + "' class='btn btn-success'>Mais informações</a></td>");
                        out.println("<a href='../DeleteStudent?id=" + r.getInt("id") + "&type=turmas' class='btn btn-danger'>Excluir</a></td>");
                        out.println("<td><a href='./infos_instructors.jsp' class='btn btn-warning'>Alterar</a></td>");
                        out.println("</tr>");
                    }
                  %>
                </tbody>
                <% out.println("<td><a href='student_table.jsp' class='btn btn-success'>Adicionar novos alunos</a></td>"); %>
              </table>
        </div>
    </body>
</html>

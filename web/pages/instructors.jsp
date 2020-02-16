<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,Controller.*,Model.*, java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.*, java.io.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./../styles/bootstrap.min.css">
        <title>Instrutores</title>
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
                    <th scope="col">Nome</th>
                    <th scope="col">Email</th>
                    <th scope="col">Valor p/hora</th>
                    <th scope="col">Experiência</th>
                    <th scope="col"></th>
                  </tr>
                </thead>
                <tbody>
                  <% 

                    Class.forName("com.mysql.jdbc.Driver");

                    Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/escola", "root", "");
                    String querySelectAll = "SELECT * FROM escola.instrutores";

                    Statement statement = conn.createStatement();
                    ResultSet r = statement.executeQuery(querySelectAll);

                    while (r.next()) {
                        out.println("<tr>");
                        out.println("<th scope='row'>" + r.getInt("id") + "</th>");
                        out.println("<td>" + r.getString("nome") + "</td>");
                        out.println("<td>" + r.getString("email") + "</td>");
                        out.println("<td>" + r.getString("valor_hora") + "</td>");
                        out.println("<td>" + r.getString("experiencia") + "</td>");
                        out.println("<td><a href='./infos_instructors.jsp?id=" + r.getInt("id") + "' class='btn btn-success'>Ver turmas</a></td>");
                        out.println("<td><a href='./infos_instructors.jsp' class='btn btn-danger'>Excluir</a></td>");
                        out.println("<td><a href='./updateInstructors.jsp?studentId=" + r.getInt("id") + "' class='btn btn-warning'>Alterar</a></td>");
                        out.println("</tr>");
                    }
                  %>
                </tbody>
                <% out.println("<td><a href='student_table.jsp' class='btn btn-success'>Adicionar novos alunos</a></td>"); %>
              </table>
        </div>
        
    </body>
</html>

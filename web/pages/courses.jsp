<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,Controller.*,Model.*, java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.*, java.io.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./../styles/bootstrap.min.css">
        <title>Cursos</title>
    </head>
    <body>
        <jsp:include page="../template/header.jsp" />
        <div class="container">
            <table class="table">
                <thead>
                  <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Requisito</th>
                    <th scope="col">Ementa</th>
                    <th scope="col">Carga horária</th>
                    <th scope="col">Preço</th>
                  </tr>
                </thead>
                <tbody>
                  <% 

                    Class.forName("com.mysql.jdbc.Driver");

                    Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/escola", "root", "");
                    String querySelectAll = "SELECT * FROM escola.cursos";

                    Statement statement = conn.createStatement();
                    ResultSet r = statement.executeQuery(querySelectAll);

                    while (r.next()) {
                        out.println("<tr>");
                        out.println("<th scope='row'>" + r.getInt("id") + "</th>");
                        out.println("<td>" + r.getString("nome") + "</td>");
                        out.println("<td>" + r.getString("requisito") + "</td>");
                        out.println("<td>" + r.getString("ementa") + "</td>");
                        out.println("<td>" + r.getShort("carga_horaria") + "</td>");
                        out.println("<td>" + r.getDouble("preco") + "</td>");
                        out.println("<td><a href='./infos_instructors.jsp' class='btn btn-danger'>Excluir</a></td>");
                        out.println("<td><a href='updateCourses.jsp?studentId=" + r.getInt("id") + "' class='btn btn-warning'>Alterar</a></td>");
                        out.println("</tr>");
                    }
                  %>
                </tbody>
                <% out.println("<td><a href='student_table.jsp' class='btn btn-success'>Adicionar novos alunos</a></td>"); %>
              </table>
        </div>
    </body>
</html>

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
        <jsp:include page="../template/header.jsp" />
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
                        out.println("<td><a href='../Delete?id=" + r.getInt("id") + "&type=3' class='btn btn-danger'>Excluir</a></td>");
                        out.println("<td><a href='./updateInstructors.jsp?instructorsId=" + r.getInt("id") + "' class='btn btn-warning'>Alterar</a></td>");
                        out.println("</tr>");
                    }
                  %>
                </tbody>
                <% out.println("<td><a href='instructors_table.jsp' class='btn btn-success'>Adicionar novos instrutores</a></td>"); %>
              </table>
        </div>
        
    </body>
</html>

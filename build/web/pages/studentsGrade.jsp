<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,Controller.*,Model.*, java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.*, java.io.*" %>
<!DOCTYPE html>
  
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./../styles/bootstrap.min.css">
        <title>Alunos</title>
    </head>
    <body>
        <jsp:include page="../template/header.jsp" />
        <div class="container">
        <table class="table">
            <thead>
              <tr>
                <th scope="col">Nome</th>
                <th scope="col">Curso</th>
                <th scope="col">Nota</th>
                <th scope="col"></th>
              </tr>
            </thead>
            <tbody>
              <% 
                Class.forName("com.mysql.jdbc.Driver");
                Integer id = Integer.parseInt(request.getParameter("instructorsId"));
                
                Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/escola", "root", ""); 
                String querySelectAll = "SELECT a.id, a.nome, c.nome, m.nota FROM escola.alunos a join escola.cursos c \n" +
                                        "join escola.turmas t\n" +
                                        "join escola.matriculas m\n" +
                                        "where m.turmas_id = t.id \n" +
                                        "and m.alunos_id = a.id \n" +
                                        "and t.cursos_id = c.id \n" + 
                                        "and t.instrutores_id =" + id;

                Statement statement = conn.createStatement();
                ResultSet r2 = statement.executeQuery(querySelectAll);

                while (r2.next()) {
                    out.println("<form method='POST' action='../UpdateGrade'>");
                    out.println("<tr>");
                    out.println("<th scope='row'>" + r2.getString("a.nome") + "</th>");
                    out.println("<td>" + r2.getString("c.nome") + "</td>");
                    out.println("<input type='hidden' value=" + r2.getInt("a.id") + " name='id'>");
                    out.println("<td><input type='text' class='form-control' value=" + r2.getInt("m.nota") + " name='grade'></td>");
                    out.println("<td><button type='submit' class='btn btn-warning'>Alterar</button></td>");
                    out.println("</tr>");
                    out.println("</form>");
                }
              %>
              
            </tbody>
            <% out.println("<td><a href='student_table.jsp' class='btn btn-success'>Adicionar novos alunos</a></td>"); %>
          </table>
        </div>
    </body>
</html>

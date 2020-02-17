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
                    <th scope="col">Turma</th>
                    <th scope="col">Instrutor</th>
                    <th scope="col">Curso</th>
                    <th scope="col">Valor total</th>
                  </tr>
                </thead>
                <tbody>
                <%
                    try{ 
                        Class.forName("com.mysql.jdbc.Driver");
                        
                        Integer id = Integer.parseInt(request.getParameter("instructorsId"));

                        Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/escola", "root", "");
                        String querySelectAll = "SELECT i.nome, c.nome, t.id, SUM(i.valor_hora * c.carga_horaria) as sum FROM escola.turmas as t \n" +
                                                "join escola.cursos as c \n" +
                                                "join escola.instrutores as i \n" +
                                                "where t.cursos_id = c.id \n" +
                                                "AND t.instrutores_id = i.id \n" +
                                                "and t.instrutores_id = " + id + " \n" +
                                                "GROUP by t.id";
                                               
                        Statement statement = conn.createStatement();
                        ResultSet r = statement.executeQuery(querySelectAll); 

                        while (r.next()) {
                            out.println("<tr>");
                            out.println("<td>" + id + "</td>");
                            out.println("<td>" + r.getString("i.nome") + "</td>");
                            out.println("<td>" + r.getString("c.nome") + "</td>");
                            out.println("<td>" + r.getInt("sum") + "</td>");
                            out.println("</tr>");
                        }

                    }catch(Exception se) {
                        out.println("<!DOCTYPE html>");
                        out.println("<html>");
                        out.println("<head>");
                        out.println("<title>oi</title>");
                        out.println("</head>");
                        out.println("<body>");
                        out.println("<h1>Erro " + se + "</h1>");
                        out.println("</body>");
                        out.println("</html>");
                    }
                %>
                </tbody>
              </table>
        </div>
    </body>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,Controller.*,Model.*, java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.*, java.io.*" %>

<%! 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        Integer id = Integer.parseInt(request.getParameter("id"));
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./../styles/bootstrap.min.css">
        <title>Cursos</title>
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
                    <th scope="col">Turma</th>
                    <th scope="col">Aluno</th>
                    <th scope="col">Nota</th>
                  </tr>
                </thead>
                <tbody>
                <%
                    try{ 
                        Class.forName("com.mysql.jdbc.Driver");

                        Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/escola", "root", "");
                        String querySelectAll = "SELECT t.id, a.nome, m.nota FROM escola.turmas as t \n" +
                                                "inner join escola.alunos as a \n" +
                                                "inner join escola.matriculas as m \n" +
                                                "where m.alunos_id = a.id \n" +
                                                "AND m.turmas_id = t.id \n " + 
                                                "and t.id = " + Integer.parseInt(request.getParameter("id"));
                        Statement statement = conn.createStatement();
                        ResultSet r = statement.executeQuery(querySelectAll); 

                        while (r.next()) {
                            out.println("<tr>");
                            out.println("<td>" + r.getInt("t.id") + "</td>");
                            out.println("<td>" + r.getString("a.nome") + "</td>");
                            out.println("<td>" + r.getInt("m.nota") + "</td>");
                            out.println("</tr>");
                        }

                    }catch(Exception se) {
                        out.println("<!DOCTYPE html>");
                        out.println("<html>");
                        out.println("<head>");
                        out.println("<title>oi</title>");
                        out.println("</head>");
                        out.println("<body>");
                        out.println("<h1>Erro</h1>");
                        out.println("</body>");
                        out.println("</html>");
                    }
                %>
                </tbody>
              </table>
        </div>
    </body>
</html>

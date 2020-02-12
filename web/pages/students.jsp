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
        
        <% 
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/escola", "root", ""); 
            String querySelect = "SELECT id, cpf, nome, email, celular FROM escola.alunos where aprovado=''";
            
            Statement statement = conn.createStatement();
            ResultSet r = statement.executeQuery(querySelect);
            
            
            while (r.next()) {
                out.println("<div class='col-md-8'>");
                out.println("<div class='card-body'>");
                out.println("<h5 class='card-title'>" + r.getString("nome") + "</h5>");
                out.println("<p class= 'card-text'><strong>CPF: </strong>" + r.getString("cpf") + "</p>");
                out.println("<p class= 'card-text'><strong>Email: </strong>" + r.getString("email") + "</p>");
                out.println("<p class= 'card-text'><strong>Celular: </strong>" + r.getString("celular") + "</p>");
                out.println("<a href='../Student?approved=t&id=" + r.getInt("id") + "' class='btn btn-success'>Aprovar</a>");
                out.println("<a href='../Student?approved=f&id=" + r.getInt("id") + "' class='btn btn-danger'>Reprovar</a>");
                out.println("</div>");
                out.println("</div>");
            }
            
        %>
            <table class="table">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">First</th>
                    <th scope="col">Last</th>
                    <th scope="col">Handle</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>Larry</td>
                    <td>the Bird</td>
                    <td>@twitter</td>
                  </tr>
                </tbody>
              </table>
        </div>
    </body>
</html>

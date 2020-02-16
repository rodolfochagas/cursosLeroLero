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
            String querySelectAll = "SELECT * FROM escola.alunos where aprovado='t'";
            
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
                out.println("<a href='./students.jsp' class='btn btn-danger'>Reprovar</a>");
                out.println("</div>");
                out.println("</div>");
            }
            
        %>
            <table class="table">
                <thead>
                  <tr>
                    <th scope="col">ID</th>
                    <th scope="col">CPF</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Email</th>
                    <th scope="col">Celular</th>
                    <th scope="col">Endereço</th>
                    <th scope="col">Cidade</th>
                    <th scope="col">Bairro</th>
                    <th scope="col">CEP</th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                  </tr>
                </thead>
                <tbody>
                  <% 
                    ResultSet r2 = statement.executeQuery(querySelectAll);
                    
                    while (r2.next()) {
                        out.println("<tr>");
                        out.println("<th scope='row'>" + r2.getInt("id") + "</th>");
                        out.println("<td>" + r2.getString("cpf") + "</td>");
                        out.println("<td>" + r2.getString("nome") + "</td>");
                        out.println("<td>" + r2.getString("email") + "</td>");
                        out.println("<td>" + r2.getString("celular") + "</td>");
                        out.println("<td>" + r2.getString("endereco") + "</td>");
                        out.println("<td>" + r2.getString("cidade") + "</td>");
                        out.println("<td>" + r2.getString("bairro") + "</td>");
                        out.println("<td>" + r2.getString("cep") + "</td>");
                        out.println("<td><a href='../DeleteStudent?id=" + r2.getInt("id") + "&type=0' class='btn btn-danger'>Excluir</a></td>");
                        out.println("<td><a href='../DeleteStudents?id=1' class='btn btn-warning'>Alterar</a></td>");
                        out.println("</tr>");
                    }
                  %>
                </tbody>
                <% out.println("<td><a href='student_table.jsp' class='btn btn-success'>Adicionar novos alunos</a></td>"); %>
              </table>
        </div>
    </body>
</html>

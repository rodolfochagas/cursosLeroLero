<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,Controller.*,Model.*, java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.*, java.io.*" %>
<!DOCTYPE html>
  
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./../styles/bootstrap.min.css">
        <link rel="stylesheed" href="../styles/home.css">
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

            <%
                int id = Integer.parseInt(request.getParameter("instructorsId"));
            
                    Class.forName("com.mysql.jdbc.Driver");

                    Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/escola", "root", ""); 
                    String querySelectAll = "SELECT * FROM escola.instrutores where id=" + id;

                    Statement statement = conn.createStatement();
           
                    ResultSet r = statement.executeQuery(querySelectAll);
                    
                    r.next();
            %>

            <form id="formulario-instrutores" method="POST" action="../UpdateInstructors">
                <h2>Instrutores</h2>
                <div class="form-group row" name="tabela-adm">
                  <label class="col-sm-2" for="nome">Nome*</label>
                  <div class="col-sm-10">
                    <%
                        out.println("<input type='hidden' value='" + r.getString("id") + "' name='id'>");
                        out.println("<input type='text' value='" + r.getString("nome") + "' name='nome' class='form-control'>");                        
                     %>
                  </div>
                  <label class="col-sm-2" for="email">Email*</label>
                  <div class="col-sm-10">
                    <%
                        out.println("<input type='text' value='" + r.getString("email") + "' name='email' class='form-control'>");
                     %>
                  </div>
                  <label class="col-sm-2" for="valor_hora">Valor por hora</label>
                  <div class="col-sm-10">
                     <%
                         out.println("<input type='number' value='" + r.getInt("valor_hora") + "' name='valor_hora' class='form-control'>");
                     %>
                  </div>
                  <label class="col-sm-2" for="senha">Senha</label>
                  <div class="col-sm-10">
                    <%
                        out.println("<input type='password' value='" + r.getString("senha") + "' name='senha' class='form-control'>");
                    %>
                  </div>
                  <label class="col-sm-2" for="experiencia">Experiência</label>
                  <div class="col-sm-10">
                    <%
                        out.println("<input type='text' value='" + r.getString("experiencia") + "' name='experiencia' class='form-control'>");
                    %>
                  </div>     
                  <button type="submit" class="btn btn-primary">Salvar</button>
                </div>
                </form>
        </div>
    </body>
</html>

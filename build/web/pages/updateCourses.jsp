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
                int id = Integer.parseInt(request.getParameter("courseId"));
            
                    Class.forName("com.mysql.jdbc.Driver");

                    Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/escola", "root", ""); 
                    String querySelectAll = "SELECT * FROM escola.cursos where id=" + id;

                    Statement statement = conn.createStatement();
           
                    ResultSet r = statement.executeQuery(querySelectAll);
                    
                    r.next();
            %>

            <form id="formulario-alunos" method="POST" action="../UpdateCourses">
                <h2>Cursos</h2>
                <div class="form-group row" name="tabela-adm">
                  <label class="col-sm-2" for="nome">Nome*</label>
                  <div class="col-sm-10">
                    <%
                        out.println("<input type='hidden' value='" + r.getString("id") + "' name='id'>");
                        out.println("<input type='text' value='" + r.getString("nome") + "' name='nome' class='form-control'>");                        
                     %>
                  </div>
                  <label class="col-sm-2" for="requisito">Requisito</label>
                  <div class="col-sm-10">
                    <%
                        out.println("<input type='text' value='" + r.getString("requisito") + "' name='requisito' class='form-control'>");
                     %>
                  </div>
                  <label class="col-sm-2" for="ementa">Ementa</label>
                  <div class="col-sm-10">
                     <%
                         out.println("<input type='text' value='" + r.getString("ementa") + "' name='ementa' class='form-control'>");
                     %>
                  </div>
                  <label class="col-sm-2" for="carga_horaria">Carga horária</label>
                  <div class="col-sm-10">
                    <%
                        out.println("<input type='number' value='" + r.getInt("carga_horaria") + "' name='carga_horaria' class='form-control'>");
                    %>
                  </div>
                  <label class="col-sm-2" for="preco">Preço</label>
                  <div class="col-sm-10">
                    <%
                        out.println("<input type='number' value='" + r.getInt("preco") + "' name='preco' class='form-control'>");
                    %>
                  </div>
                  <button type="submit" class="btn btn-primary">Salvar</button>
                </div>
                </form>
        </div>
    </body>
</html>

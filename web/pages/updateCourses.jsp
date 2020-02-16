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
                        out.println("<input type='text' value='" + r.getString("nome") + "' name='nome'>");                        
                     %>
                  </div>
                  <label class="col-sm-2" for="requisito">Requisito</label>
                  <div class="col-sm-10">
                    <%
                        out.println("<input type='text' value='" + r.getString("requisito") + "' name='requisito'>");
                     %>
                  </div>
                  <label class="col-sm-2" for="ementa">Ementa</label>
                  <div class="col-sm-10">
                     <%
                         out.println("<input type='text' value='" + r.getString("ementa") + "' name='ementa'>");
                     %>
                  </div>
                  <label class="col-sm-2" for="carga_horaria">Carga horária</label>
                  <div class="col-sm-10">
                    <%
                        out.println("<input type='number' value='" + r.getInt("carga_horaria") + "' name='carga_horaria'>");
                    %>
                  </div>
                  <label class="col-sm-2" for="preco">Preço</label>
                  <div class="col-sm-10">
                    <%
                        out.println("<input type='number' value='" + r.getInt("preco") + "' name='preco'>");
                    %>
                  </div>
                  <button type="submit" class="btn btn-primary">Salvar</button>
                </div>
                </form>
        </div>
    </body>
</html>

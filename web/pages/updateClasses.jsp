<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,Controller.*,Model.*, java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.*, java.io.*" %>
<!DOCTYPE html>
  
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./../styles/bootstrap.min.css">
        <title>Turmas</title>
    </head>
    <body>
        <jsp:include page="../template/header.jsp" />
        <div class="container">

            <%
                int id = Integer.parseInt(request.getParameter("classId"));
            
                    Class.forName("com.mysql.jdbc.Driver");

                    Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/escola", "root", ""); 
                    String querySelectAll = "SELECT * FROM escola.turmas where id=" + id;

                    Statement statement = conn.createStatement();
           
                    ResultSet r = statement.executeQuery(querySelectAll);
                    
                    r.next();
            %>

            <form id="formulario-alunos" method="POST" action="../UpdateClasses">
                <h2>Turmas</h2>
                <div class="form-group row" name="tabela-adm">
                  <label class="col-sm-2" for="instrutores_id">ID do instrutor</label>
                  <div class="col-sm-10">
                    <%
                        out.println("<input type='hidden' value='" + r.getString("id") + "' name='id'>");
                        out.println("<input type='number' value='" + r.getInt("instrutores_id") + "' name='instrutores_id'>");                        
                     %>
                  </div>
                  <label class="col-sm-2" for="cursos_id">ID do curso</label>
                  <div class="col-sm-10">
                    <%
                        out.println("<input type='number' value='" + r.getInt("cursos_id") + "' name='cursos_id'>");
                     %>
                  </div>
                  <label class="col-sm-2" for="data_inicio">Data de inicio</label>
                  <div class="col-sm-10">
                     <%
                         out.println("<input type='date' value='" + r.getDate("data_inicio") + "' name='data_inicio'>");
                     %>
                  </div>
                  <label class="col-sm-2" for="data_final">Data Final</label>
                  <div class="col-sm-10">
                     <%
                         out.println("<input type='date' value='" + r.getDate("data_final") + "' name='data_final'>");
                     %>
                  </div>
                  <label class="col-sm-2" for="carga_horaria">Carga horária</label>
                  <div class="col-sm-10">
                    <%
                        out.println("<input type='number' value='" + r.getString("carga_horaria") + "' name='carga_horaria'>");
                    %>
                  </div>
                  <button type="submit" class="btn btn-primary">Salvar</button>
                </div>
                </form>
        </div>
    </body>
</html>
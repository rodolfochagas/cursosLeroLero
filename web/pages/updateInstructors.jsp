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

            <%
                int id = Integer.parseInt(request.getParameter("instructorsId"));
            
                    Class.forName("com.mysql.jdbc.Driver");

                    Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/escola", "root", ""); 
                    String querySelectAll = "SELECT * FROM escola.instrutores where id=" + id;

                    Statement statement = conn.createStatement();
           
                    ResultSet r = statement.executeQuery(querySelectAll);
                    
                    r.next();
            %>

            <form id="formulario-alunos" method="POST" action="../UpdateInstructors">
                <h2>Instrutores</h2>
                <div class="form-group row" name="tabela-adm">
                  <label class="col-sm-2" for="nome">Nome*</label>
                  <div class="col-sm-10">
                    <%
                        out.println("<input type='text' value='" + r.getString("nome") + "' name='nome'>");                        
                     %>
                  </div>
                  <label class="col-sm-2" for="email">Email*</label>
                  <div class="col-sm-10">
                    <%
                        out.println("<input type='text' value='" + r.getString("email") + "' name='email'>");
                     %>
                  </div>
                  <label class="col-sm-2" for="valor_hora">Valor por hora</label>
                  <div class="col-sm-10">
                     <%
                         out.println("<input type='number' value='" + r.getInt("valor_hora") + "' name='valor_hora'>");
                     %>
                  </div>
                  <label class="col-sm-2" for="senha">Senha</label>
                  <div class="col-sm-10">
                    <%
                        out.println("<input type='password' value='" + r.getString("senha") + "' name='senha'>");
                    %>
                  </div>
                  <label class="col-sm-2" for="experiencia">Experiência</label>
                  <div class="col-sm-10">
                    <%
                        out.println("<input type='text' value='" + r.getString("experiencia") + "' name='experiencia'>");
                    %>
                  </div>     
                  <button type="submit" class="btn btn-primary">Salvar</button>
                </div>
                </form>
        </div>
    </body>
</html>

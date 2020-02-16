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

            <%
                int id = Integer.parseInt(request.getParameter("studentId"));
            
                    Class.forName("com.mysql.jdbc.Driver");

                    Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/escola", "root", ""); 
                    String querySelectAll = "SELECT * FROM escola.alunos where id=" + id;

                    Statement statement = conn.createStatement();
           
                    ResultSet r = statement.executeQuery(querySelectAll);
                    
                    r.next();
            %>

            <form id="formulario-alunos" method="POST" action="../UpdateStudent">
                <h2>Alunos</h2>
                <div class="form-group row" name="tabela-adm">
                  <label class="col-sm-2" for="cpf">CPF*</label>
                  <div class="col-sm-10">
                     <%
                        out.println("<input type='hidden' value='" + r.getString("id") + "' name='id'>");
                        out.println("<input type='text' value='" + r.getString("cpf") + "' name='cpf'>");
                     %>
                  </div>
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
                  <label class="col-sm-2" for="celular">Celular*</label>
                  <div class="col-sm-10">
                     <%
                         out.println("<input type='text' value='" + r.getString("celular") + "' name='celular'>");
                     %>
                  </div>
                  <label class="col-sm-2" for="endereco">Endereço</label>
                  <div class="col-sm-10">
                    <%
                        out.println("<input type='text' value='" + r.getString("endereco") + "' name='endereco'>");
                    %>
                  </div>
                  <label class="col-sm-2" for="cidade">Cidade</label>
                  <div class="col-sm-10">
                    <%
                        out.println("<input type='text' value='" + r.getString("cidade") + "' name='cidade'>");
                    %>
                  </div>
                  <label class="col-sm-2" for="bairro">Bairro</label>
                  <div class="col-sm-10">
                    <%
                        out.println("<input type='text' value='" + r.getString("bairro") + "' name='bairro'>");
                    %>
                  </div>
                  <label class="col-sm-2" for="cep">CEP</label>
                  <div class="col-sm-10">
                    <%
                        out.println("<input type='text' value='" + r.getString("cep") + "' name='cep'>");
                    %>
                  </div>         
                  <button type="submit" class="btn btn-primary">Salvar</button>
                </div>
                </form>
        </div>
    </body>
</html>

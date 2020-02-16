<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="./../styles/bootstrap.min.css">
        <link rel="stylesheed" href="../styles/home.css">
    </head>
    <body>
        <jsp:include page="../template/header.jsp" />
	<div class="container">
            <form id="formulario-alunos" method="POST" action="../RegisterServlet">
                <h2>Alunos</h2>
                <div class="form-group row" name="tabela-adm">

                  <label class="col-sm-2" for="cpf">CPF*</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="aluno_cpf">
                  </div>
                  <label class="col-sm-2" for="nome">Nome*</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="aluno_nome">
                  </div>
                  <label class="col-sm-2" for="email">Email*</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="aluno_email">
                  </div>
                  <label class="col-sm-2" for="celular">Celular*</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="aluno_celular">
                  </div>
                  <label class="col-sm-2" for="login">Login*</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="aluno_login">
                  </div>
                  <label class="col-sm-2" for="senha">Senha*</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="aluno_senha">
                  </div>
                  <label class="col-sm-2" for="endereco">Endereço</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="aluno_endereco">
                  </div>
                  <label class="col-sm-2" for="cidade">Cidade</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="aluno_cidade">
                  </div>
                  <label class="col-sm-2" for="bairro">Bairro</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="aluno_bairro">
                  </div>
                  <label class="col-sm-2" for="cep">CEP</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="aluno_cep">
                  </div>
                  <button type="submit" class="btn btn-primary">Enviar</button>
                </div>
            </form>


	</div>
    <script src="../jquery-3.4.1.min.js"></script> 
	  <script src="../scripts/jquery.validate.min.js"></script>
    <script src="../popper.min.js"></script>
    <script src="../scripts/bootstrap.min.js"></script>
    <script src="../scripts/tables.js"></script>
    </body>
</html>

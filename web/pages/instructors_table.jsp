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
            <form id="formulario-instrutores">
                <h2>Instrutores</h2>
                <div class="form-group row" name="tabela-instrutores">
                  <label class="col-sm-2" for="id">ID*</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="instrutor_id">
                  </div>
                  <label class="col-sm-2" for="nome">Nome*</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="instrutor_nome">
                  </div>
                  <label class="col-sm-2" for="email">Email*</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="instrutor_email">
                  </div>
                  <label class="col-sm-2" for="valor-hora">Valor-hora</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="instrutor_valor">
                  </div>
                  <label class="col-sm-2" for="login">Login*</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="instrutor_login">
                  </div>
                  <label class="col-sm-2" for="senha">Senha*</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="instrutor_senha">
                  </div>
                  <label class="col-sm-2" for="foto">Foto do usuário</label>
                  <div class="col-sm-10">
                    <label for="foto">Selecione uma foto no formato .jpg:</label>
                    <input type="file" name="instrutor_foto"><br><br>
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
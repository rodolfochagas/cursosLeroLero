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
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <img id="logoLero" src= "./../images/logo.png" alt="Imagem do Curso">
                    </div>
                    <ul class="nav justify-content-end">
                        <li class="nav-item">
                            <a class="nav-link btn-light" href="./../index.jsp">Inicio</a>
                        </li>
                        <li class="nav-item dropdown">
                        </li>
                    </ul>
                </div>
            </nav>
		</header>
	<div class="container">
            <form id="formulario-instrutores" method="POST" action="../NewInstructor" enctype="multipart/form-data">
                <h2>Instrutores</h2>
                <div class="form-group row" name="tabela-instrutores">
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
                  <label class="col-sm-2" for="senha">Senha*</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="instrutor_senha">
                  </div>
                  <label class="col-sm-2" for="login">Experiência</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="instrutor_esperiencia">
                  </div>
                  <label class="col-sm-2" for="foto">Foto do usuário</label>
                  <div class="col-sm-10">
                    <label for="foto">Selecione uma foto no formato .jpg:</label>                    
                    <input id="file" type="file" name="instrutor_foto"><br><br>
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

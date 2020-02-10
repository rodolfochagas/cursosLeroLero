<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="./../styles/bootstrap.min.css">
        <title>Cursos Lero Lero</title>
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
					<a class="nav-link btn-light" href="./login.jsp">Login</a>
				</li>
			</ul>
		</div>
	</nav>
		<div class="container">
			<h1>Registro</h1>
			<form id="formulario">
				<div class="form-group">
					<label for="nome">Nome</label>
					<input name="nome" type="nome" class="form-control" id="nome" placeholder="Seu nome">
				</div>
				
				<div class="form-group">
					<label for="email">Endereço de email</label>
					<input name="email" type="email" class="form-control" id="email" placeholder="Seu email">
				</div>

				<div class="form-group">
					<label for="senha">Senha</label>
					<input name="senha" type="password" class="form-control" id="senha" placeholder="Digite a sua senha">
				</div>

				<button type="submit" class="btn btn-primary">Enviar</button>
			</form>
		</div>
    <script src="./../scripts/jquery-3.4.1.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="./../scripts/jquery.validate.min.js"></script>

    </body>
</html>

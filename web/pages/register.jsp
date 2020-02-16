<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,Controller.*,Model.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="./../styles/bootstrap.min.css">
        <title>Cursos Lero Lero</title>
    </head>
    <body>
        <jsp:include page="../template/header.jsp" />
		<div class="container">
			<h1>Registro</h1>
                        <form id="formulario" method="POST" action="../RegisterServlet">
				<div class="form-group">
					<label for="nome">Nome</label>
					<input name="nome" type="nome" class="form-control" id="nome" placeholder="Seu nome">
				</div>
                                
                                <div class="form-group">
					<label for="cpf">CPF</label>
					<input name="cpf" type="text" class="form-control" id="cpf" placeholder="Seu cpf">
				</div>
				
				<div class="form-group">
					<label for="email">Endereço de email</label>
					<input name="email" type="email" class="form-control" id="email" placeholder="Seu email">
				</div>
                            
                                <div class="form-group">
					<label for="celular">Celular</label>
					<input name="celular" type="tel" class="form-control" id="celular" placeholder="Seu celular">
				</div>
                            
                                <div class="form-group">
					<label for="endereco">Endereço</label>
					<input name="endereco" type="text" class="form-control" id="endereco" placeholder="Seu endereço">
				</div>
                            
                                <div class="form-group">
					<label for="cidade">Cidade</label>
					<input name="cidade" type="text" class="form-control" id="cidade" placeholder="Sua cidade">
				</div>
                            
                                <div class="form-group">
					<label for="bairro">Bairro</label>
					<input name="bairro" type="text" class="form-control" id="bairro" placeholder="Seu bairro">
				</div>
                            
                                <div class="form-group">
					<label for="cep">CEP</label>
					<input name="cep" type="number" class="form-control" id="cep" placeholder="Seu cep">
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

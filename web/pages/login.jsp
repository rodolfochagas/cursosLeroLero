<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, Controller.*" %>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="./../styles/bootstrap.min.css">
        <title>Cursos Lero Lero</title>
    </head>
    <body>
        <jsp:include page="../template/header.jsp" />
        <div class="container">
                <h1>Login</h1>
                <form id="formulario" action="../LoginServlet" method="POST">
                        <div class="form-group">
                                <label for="email">Email</label>
                                <input name="email" type="email" class="form-control" id="email" placeholder="Seu email">
                        </div>

                        <div class="form-group">
                                <label for="senha">Senha</label>
                                <input name="senha" type="password" class="form-control" id="senha" placeholder="Digite a sua senha">
                        </div>

                        <button type="submit" class="btn btn-primary">Entrar</button>
                </form>
        </div>
    <!--<script src="./../scripts/jquery-3.4.1.min.js"></script>-->
		<!--<script src="js/bootstrap.min.js"></script>-->
		<!--<script src="./../scripts/jquery.validate.min.js"></script>-->

    </body>


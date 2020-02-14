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
                        <a class="nav-link btn-light" href="./register.jsp">Registrar-se</a>
                    </li>
                </ul>
            </div>
	</nav>
        <div class="container">
            <table class="table">
                <thead>
                  <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Requisito</th>
                    <th scope="col">Ementa</th>
                    <th scope="col">Carga horária</th>
                    <th scope="col">Preço</th>
                  </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">ID</th>
                        <td scope="col"><%= request.getAttribute("name") %></td>
                        <td scope="col">Requisito</td>
                        <td scope="col">Ementa</td>
                        <td scope="col">Carga horária</td>
                        <td scope="col">Preço</td>
                      </tr>
                </tbody>
              </table>
        </div>
    </body>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,Controller.*,Model.*, java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.*, java.io.*" %>

<!DOCTYPE html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="./styles/bootstrap.min.css">
    <link rel="stylesheet" href="./styles/home.css">
    <title>Cursos Lero Lero</title>
  </head>
  <body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <div class="navbar-header">
                    <img id="logoLero" src= "images/logo.png" alt="Imagem do Curso">
                </div>
                <ul class="nav justify-content-end">
                    <li class="nav-item">
                        <a class="nav-link btn-light" href="#homeText">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn-light" href="#about">Sobre</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn-light" href="#instructors">Instrutores</a>
                    </li>
                    
                    <% 
                        String email = (String) session.getAttribute("email");
                        String type = (String) session.getAttribute("type");
                        int id = 0;
                        
                        if ("aluno".equals(type)) {
                            id = (Integer)session.getAttribute("id");
                            
                            out.println("<li class='nav-item'>");
                            out.println("<a class='nav-link btn-light' href='./pages/updateStudent.jsp?studentId=" + id + "'>Atualizar Dados</a>");
                            out.println("</li>");
                            out.println("<li class='nav-item'>");
                            out.println("<a class='nav-link btn-light' href='./pages/students_grades.jsp'>Meus Cursos</a>");
                            out.println("</li>");
                        } else if ("admin".equals(type)){
                            out.println("<li class='nav-item'>");
                            out.println("<a class='nav-link btn-light' href='./pages/students.jsp'>Alunos</a>");
                            out.println("</li>");
                            out.println("<li class='nav-item'>");
                            out.println("<a class='nav-link btn-light' href='./pages/courses.jsp'>Cursos</a>");
                            out.println("</li>");
                            out.println("<li class='nav-item'>");
                            out.println("<a class='nav-link btn-light' href='./pages/classAdmin.jsp'>Turmas</a>");
                            out.println("</li>");
                            out.println("<li class='nav-item'>");
                            out.println("<a class='nav-link btn-light' href='./pages/instructors.jsp'>Dados Instrutores</a>");
                            out.println("</li>");
                        } else if ("instrutor".equals(type)){
                            id = (Integer)session.getAttribute("id");
                            out.println("<li class='nav-item'>");
                            out.println("<a class='nav-link btn-light' href='./pages/studentsGrade.jsp?instructorsId=" + id + "'>Atribuir notas</a>");
                            out.println("</li>");
                            out.println("<li class='nav-item'>");
                            out.println("<a class='nav-link btn-light' href='./pages/infos_instructors.jsp?instructorsId=" + id + "'>Salário</a>");
                            out.println("</li>");
                            out.println("<li class='nav-item'>");
                            out.println("<a class='nav-link btn-light' href='pages/updateInstructors.jsp?instructorsId=" + id + "'>Alterar dados</a>");
                            out.println("</li>");
                        }else {
                            out.println("<li class='nav-item'>");
                            out.println("<a class='nav-link btn-light' href='./pages/students.jsp'>Alunos</a>");
                            out.println("</li>");
                            out.println("<li class='nav-item'>");
                            out.println("<a class='nav-link btn-light' href='./pages/courses.jsp'>Cursos</a>");
                            out.println("</li>");
                            out.println("<li class='nav-item'>");
                            out.println("<a class='nav-link btn-light' href='./pages/register.jsp'>Registre-se</a>");
                            out.println("</li>");
                            out.println("<li class='nav-item'>");
                            out.println("<a class='nav-link btn-light' href='./pages/login.jsp'>Login</a>");
                            out.println("</li>");
                        }
                    %>
                </ul>
            </div>
        </nav>
    </header>
    <div id="homeText" class="container-fluid text-center">
        <img src= "images/Cursos lero lero.png" alt="Imagem do Curso">
    </div>
<section id= "about">
    <div class="container text-center">
        <h2>Sobre</h2>
        <p>A Cursos Lero Lero oferece grandes oportunidades para todos crescerem profissionalmente. Temos diversos cursos onde proporcionamos muito conhecimento de forma rápida e divertida. Conheça nossos cursos:</p>
        <div class="row">
            <% 
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/escola", "root", "");
                String querySelectAll = "SELECT * FROM escola.cursos c \n" +
                                    "join escola.instrutores i \n" +
                                    "join escola.turmas t \n" +
                                    "where t.cursos_id = c.id \n" +
                                    "and t.instrutores_id = i.id";
                String querySelectAllInstructors = "SELECT * FROM escola.instrutores";
                String querySelectAllStudents = "SELECT * FROM escola.alunos where comentario!='null'";

                Statement statement = conn.createStatement();
                ResultSet r = statement.executeQuery(querySelectAll);

                while (r.next()) {
                    out.println("<div class='col-3'>");
                    out.println("<div class='card'>");
                    out.println("<div class='card-header'>" + r.getString("c.nome") + "</div>");
                    out.println("<img class='card-img-top' src= 'images/Cursos/" + r.getInt("c.id") + ".jpg' alt='Imagem do Curso'>");
                    out.println("<div class='card-body'>");
                    out.println("<p class'card-text'><b>Turma: </b>" + r.getString("t.id") + "</p>");
                    out.println("<p class'card-text'><b>Ementa: </b>" + r.getString("c.ementa") + "</p>");
                    out.println("<p class'card-text'><b>Carga horária: </b>" + r.getInt("c.carga_horaria") + "</p>");
                    out.println("<p class'card-text'><b>Valor: </b>" + r.getDouble("c.preco") + "</p>");
                    out.println("<p class'card-text'><b>Instrutor: </b>" + r.getString("i.nome") + "</p>");
                     if ("aluno".equals(type)) {
                        out.println("<a href='pages/classes.jsp?studentId=" + session.getAttribute("id") + "&courseId=" + r.getInt("id") + "' class='btn btn-light'>Inscrever-se</a>");
                    }
                    out.println("</div>");
                    out.println("</div>");
                    out.println("</div>");
                }
            %>
        </div>	
    </div>
</section>

<section id= "instructors">
    <div class="container text-center">
        <h1>Instrutores</h1>
        <div class="row">
            <% 
                ResultSet r2 = statement.executeQuery(querySelectAllInstructors);

                while (r2.next()) {
                    out.println("<div class='col-3'>");
                    out.println("<div class='card'>");
                    out.println("<div class='card-header'>" + r2.getString("nome") + "</div>");
                    out.println("<img class='card-img-top' src='images/Instrutores/" + r2.getInt("id") + ".jpg'>");
                    out.println("</div>");
                    out.println("</div>");
                }
            %>

        </div>
    </div>
</section>
            
<section id="comments">
    <div class="container text-center">
        <h2>Saiba o que estão falando sobre o nosso curso</h2>
        <div class="row">
            <% 
                ResultSet r3 = statement.executeQuery(querySelectAllStudents);
                while (r3.next()) {
                    out.println("<div class='card mb-3' style='max-width: 540px'>");
                    out.println("<div class='row no-gutters'>");
                    out.println("<div class='col-md-4'>");
                    out.println("<img class='card-img' src='images/Alunos/" + r3.getInt("id") + ".jpg'>");
                    out.println("</div>");
                    out.println("<div class='col-md-8'>");
                    out.println("<div class='card-body'>");
                    out.println("<h4 class='card-title'>" + r3.getString("nome") + "</h4>");
                    out.println("<p class='card-text'>"+ r3.getString("comentario") + "</p>");
                    out.println("</div>");
                    out.println("</div>");
                    out.println("</div>");
                    out.println("</div>");
                }
            %>
        </div>
        <% if ("aluno".equals(type)) {
            out.println("<form id='formulario-cursos' method='POST' action='Student_comments'>");
            out.println("<h2>Adicione um cometário sobre os nossos cursos também!</h2>");
            out.println("<div class='form-group row' id='comments'>");
            out.println("<div class='col-sm-10'>");
            out.println("<input type='hidden' value='" + id + "' name='id'>");
            out.println("<input type='text' class='form-control' name='comments'>");
            out.println("</div>");
            out.println("<button type='submit' class='btn btn-primary'>Enviar</button>");
            out.println("</div>");
            out.println("</form>");
        
        } %>
    </div>
</section>
<footer class="page-footer font-small unique-color-dark pt-4">
  <div class="container">
    <ul class="list-unstyled list-inline text-center py-2">
      <li class="list-inline-item">
        <a href="./pages/register.jsp" class="btn btn-light">Registre-se</a>
      </li>
    </ul>
  </div>
  <div id="textFooter" class="footer-copyright text-center py-3"> © Desenvolvido por Milena Veríssimo e Rodolfo Changas
  </div>
</footer>
<script src="./jquery-3.4.1.min.js"></script>
<script src="./popper.min.js"></script>
<script src="scripts/bootstrap.min.js"></script>
</body>

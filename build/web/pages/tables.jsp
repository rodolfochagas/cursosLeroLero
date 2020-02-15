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
              <a class="nav-link dropdown-toggle btn-light" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Formulários
              </a>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a id="btn-cursos" class="dropdown-item" href="#">Cursos</a>
                <a id="btn-instrutores" class="dropdown-item" href="#">Instrutores</a>
                <a id="btn-matriculas" class="dropdown-item" href="#">Matriculas</a>
                <a id="btn-turmas" class="dropdown-item" href="#">Turmas</a>
                <a id="btn-adm" class="dropdown-item" href="#">Administrador</a>
                <a id="btn-alunos" class="dropdown-item" href="#">Alunos</a>
              </div>
            </li>
					</ul>
				</div>
			</nav>
		</header>
	<div class="container">
	  <form id="formulario-cursos">
      <h2>Cursos</h2>
      <div class="form-group row" id="tabela-cursos">
        <label class="col-sm-2" for="id">ID*</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="curso_id">
        </div>
        <label class="col-sm-2" for="nome">Nome*</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="curso_nome">
        </div>
        <label class="col-sm-2" for="requisito">Requisito</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="curso_requisito">
        </div>
        <label class="col-sm-2" for="ementa">Ementa</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="curso_ementa">
        </div>
        <label class="col-sm-2" for="carga_horaria">Carga horária</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="curso_carga_horaria">
        </div>
        <label class="col-sm-2" for="preco">Preço</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="curso_preco">
        </div>
        <button type="submit" class="btn btn-primary">Enviar</button>
      </div>
    </form>
      
    
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
        <button type="submit" class="btn btn-primary">Enviar</button>
      </div>
    </form>

	  <form id="formulario-matriculas">
      <h2>Matrículas</h2>
      <div class="form-group row" name="tabela-matriculas">

        <label class="col-sm-2" for="id">ID*</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="matricula_id">
        </div>
        <label class="col-sm-2" for="turmas_id">ID da Turma*</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="matricula_turmas_id">
        </div>
        <label class="col-sm-2" for="alunos_id">ID do Aluno*</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="matricula_alunos_id">
        </div>
        <label class="col-sm-2" for="data_matricula">Data de Matrícula</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="matricula_data">
        </div>
        <label class="col-sm-2" for="nota">Nota</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="matricula_nota">
        </div>
        <button type="submit" class="btn btn-primary">Enviar</button>
      </div>
    </form>
    
	  <form id="formulario-turmas">
      <h2>Turmas</h2>
      <div class="form-group row" name="tabela-turmas">

        <label class="col-sm-2" for="id">ID*</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="turma_id">
        </div>
        <label class="col-sm-2" for="instrutores_id">ID do Instrutor*</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="turma_instrutores_id">
        </div>
        <label class="col-sm-2" for="cursos_id">ID do Curso*</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="turma_cursos_id">
        </div>
        <label class="col-sm-2" for="data_inicio">Data de Início</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="turma_data_inicio">
        </div>
        <label class="col-sm-2" for="data_final">Data final</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="turma_data_final">
        </div>
        <label class="col-sm-2" for="carga_horaria">Carga horária</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="turma_carga_horaria">
        </div>
        <button type="submit" class="btn btn-primary">Enviar</button>
      </div>
    </form>

	  <form id="formulario-adm">
      <h2>Administrador</h2>
      <div class="form-group row" name="tabela-adm">
        <label class="col-sm-2" for="id">ID*</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="adm_id">
        </div>
        <label class="col-sm-2" for="nome">Nome*</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="adm_nome">
        </div>
        <label class="col-sm-2" for="login">Login*</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="adm_login">
        </div>
        <label class="col-sm-2" for="senha">Senha*</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="adm_senha">
        </div>
        <button type="submit" class="btn btn-primary">Enviar</button>
      </div>
    </form>

	  <form id="formulario-alunos">
      <h2>Alunos</h2>
      <div class="form-group row" name="tabela-adm">

        <label class="col-sm-2" for="id">ID*</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="aluno_id">
        </div>
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

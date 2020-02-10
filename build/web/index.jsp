<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
						<li class="nav-item">
							<a class="nav-link btn-light" href="#comments">Comentários</a>
						</li>
						<li class="nav-item">
							<a class="nav-link btn-light" href="./pages/tables.jsp">Tabelas</a>
						</li>
						<li class="nav-item">
							<a class="nav-link btn-light" href="./pages/register.jsp">Registrar-se</a>
						</li>
						<li class="nav-item">
							<a class="nav-link btn-light" href="./pages/login.jsp">Login</a>
						</li>
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
					<div class="col-3">
						<div class="card">
							<div class="card-header">
								Curso de pilotagem
							</div>
							<img class="card-img-top" src= "images/curso1.jpg" alt="Imagem do Curso">
						</div>
					</div>
					<div class="col-3">
						<div class="card">
								 <div class="card-header">
									Curso de autoconfiança
							</div>
							<img class="card-img-top" src="images/curso2.jpg" alt="Imagem do Curso">
						</div>
					</div>
					<div class="col-3">
						<div class="card">
								 <div class="card-header">
									Curso de ciência básica
							</div>
							<img class="card-img-top" src="images/curso3.gif" alt="Imagem do Curso">
						</div>
					</div>
					<div class="col-3">
						<div class="card">
								 <div class="card-header">
									Curso de caça às fadas
							</div>
							<img class="card-img-top" src="images/curso4.jpeg" alt="Imagem do Curso">
						</div>
					</div>
				</div>		
			</div>
		</section>

    <div id= "instructors" class="container text-center">
      <h1>Instrutores</h1>
			<div class="row">
				<div class="col-3">
					<div class="card">
						<div class="card-header">
							Senhora Puff
						</div>
						<img class="card-img-top" src="images/prof1.jpg" alt="Imagem">
						<div class="card-body">
							<p class="card-text">Um exemplo de paciência na hora de ensinar. A senhora Puff auxilia seus alunos na hora de tirarem a carteira de habilitação</p>
						</div>
					</div>
				</div>
				<div class="col-3">
					<div class="card">
						<div class="card-header">
							Professor Girafales
						</div>
						<img class="card-img-top" src="images/prof2.jpg" alt="Imagem">
						<div class="card-body">
							<p class="card-text">É só ele chegar na sala de aula que o ambiente exala amor. O professor Girafales conquista seus alunos com muito cavaleirismo e simpatia</p>
						</div>
					</div>
				</div>
				<div class="col-3">
					<div class="card">
						<div class="card-header">
							Professor Utônio
						</div>
						<img class="card-img-top" src="images/prof3.jpg" alt="Imagem">
						<div class="card-body">
							<p class="card-text">Um belo exemplo de professor e pai. O professor Utônio é um grande protetor, sempre prezando pela segurança de seus alunos</p>
						</div>
					</div>
				</div>
				<div class="col-3">
					<div class="card">
						<div class="card-header">
							Professor Crocker
						</div>
						<img class="card-img-top" src="images/prof4.jpg" alt="Imagem">
						<div class="card-body">
							<p class="card-text">Repleto de imaginação, o professor Crocker estimula seus alunos a viverem sua infância de maneira mais criativa.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<section id="comments">
			<div class="container text-center">
				<h2>Saiba o que estão falando sobre o nosso curso</h2>
				<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<div class="row">
								<div class="card mb-3" style="max-width: 540px;">
									<div class="row no-gutters">
										<div class="col-md-4">
											<img src="images/com1.jpeg" class="card-img" alt="...">
										</div>
										<div class="col-md-8">
											<div class="card-body">
												<h5 class="card-title">@BobSponja</h5>
												<p class="card-text">Ninguém pode ser perfeito. Mas todos podem ser melhores e os cursos Lero Lero despertam o melhor de todos nós!</p>
												<p class="card-text"><small class="text-muted">Postado em 15/01/2020</small></p>
											</div>
										</div>
									</div>
								</div>
								<div class="card mb-3" style="max-width: 540px;">
									<div class="row no-gutters">
										<div class="col-md-4">
											<img src="images/com3.jpeg" class="card-img" alt="...">
										</div>
										<div class="col-md-8">
											<div class="card-body">
												<h5 class="card-title">@Chaves</h5>
												<p class="card-text">Ninguém tem paciência comigo, só a galera dos cursos Lero Lero</p>
												<p class="card-text"><small class="text-muted">Postado em 29/12/2019</small></p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="carousel-item">
							<div class="row">
								<div class="card mb-3" style="max-width: 540px;">
									<div class="row no-gutters">
										<div class="col-md-4">
											<img src="images/com3.png" class="card-img" alt="...">
										</div>
										<div class="col-md-8">
											<div class="card-body">
												<h5 class="card-title">@Lindinha</h5>
												<p class="card-text">E mais uma vez o dia foi salvo graças aos cursos da Lero Lero :D</p>
												<p class="card-text"><small class="text-muted">Postado em 08/11/2019</small></p>
											</div>
										</div>
									</div>
								</div>
								<div class="card mb-3" style="max-width: 540px;">
									<div class="row no-gutters">
										<div class="col-md-4">
											<img src="images/com4.jpeg" class="card-img cut" alt="...">
										</div>
										<div class="col-md-8">
											<div class="card-body">
												<h5 class="card-title">@TimmyTurner</h5>
												<p class="card-text">Meu único desejo é poder fazer mais um curso com a Lero Lero!</p>
												<p class="card-text"><small class="text-muted">Postado em 02/11/2019</small></p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
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
      <div id="textFooter" class="footer-copyright text-center py-3">© Desenvolvido por Milena Veríssimo e Rodolfo Changas
      </div>
    </footer>
    <script src="./jquery-3.4.1.min.js"></script>
    <script src="./popper.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
  </body>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	 <meta http-equiv="X-UA-Compatible" content="IE=edge">
	
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/listUser.css">
	<link rel = "shortcut icon" type = "image/x-icon" href = "imagens/icon-admin.png"/>
	
	<title>ButterByte</title>

  </head>
  <body>
	<!--div class="container-fluid"-->
	 <header id="main-header">	
		<div class="wrapper">
			<nav class="navbar navbar-expand-sm  navbar-dark">
				<a class="navbar-brand" href="home.html">ButterByte</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon"></span>
				</button>
				
				<div class="collapse navbar-collapse" id="collapsibleNavbar">
					<ul class="navbar-nav">
						<li class="nav-item">
							<a class="nav-link" href="home.html">In�cio</a>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
								Administra��o
							</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="listUser.html">Usu�rios</a>
								<a class="dropdown-item" href="listHoliday.html">Feriados</a>
								<a class="dropdown-item" href="listProject.html">Projetos</a>
							</div>
						</li>
					</ul>
				</div> 
			</nav>
		</div>
	</div>
</header>
	<br>
	<div id="main" class="container">
		<h4 class="page-header">Listagem de Usu�rios</h4>
		<div id="list" class="row">
			<div class="table-responsive col-md-12">
				<table class="table table-striped" cellspacing="0" cellpadding="0">
					<thead>
						<tr>
							<th>ID</th>
							<th>Nome</th>
							<th>E-mail</th>
							<th class="actions">Status</th>
							<th class="actions"></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>001</td>
								<td>Usu�rio 1</td>
								<td>Usu�rio@teste.com</td>
								<td class="actions">
									<a class="btn btn-success btn-xs" href="#">Ativo</a>
								</td>
								<td class="actions">
									<a type="submit" class="btn btn-primary" href="editUser.html">Editar</button></a>
								</td>
								<td class="actions">
									<a type="submit" class="btn btn-danger" href="#">Excluir</button></a>
							</td>
						</tr>
						<tr>
							<td>002</td>
								<td>Usu�rio 2</td>
								<td>Usu�rio@teste.com</td>
								<td class="actions">
									<a class="btn btn-success btn-xs" href="#">Ativo</a>
								</td>
								<td class="actions">
									<a type="submit" class="btn btn-primary" href="editUser.html">Editar</button></a>
								</td>
								<td class="actions">
									<a type="submit" class="btn btn-danger" href="#">Excluir</button></a>

							</td>
						</tr>
						<tr>
							<td>003</td>
							<td>Usu�rio 3</td>
							<td>Usu�rio@teste.com</td>
							<td class="actions">
								<a class="btn btn-success btn-xs" href="#">Ativo</a>
							</td>
							<td class="actions">
								<a type="submit" class="btn btn-primary" href="editUser.html">Editar</button></a>
							</td>
							<td class="actions">
								<a type="submit" class="btn btn-danger" href="#">Excluir</button></a>
							</td>
						</tr>
						<tr>
							<td>004</td>
							<td>Usu�rio 4</td>
							<td>Usu�rio@teste.com</td>
							<td class="actions">
								<a class="btn btn-danger btn-xs" href="#">Inativo</a>
							</td>
							<td class="actions">
								<a type="submit" class="btn btn-primary" href="editUser.html">Editar</button></a>
							</td>
							<td class="actions">
								<a type="submit" class="btn btn-danger" href="#">Excluir</button></a>
							</td>
						</tr>
						<tr>
							<td>005</td>
							<td>Usu�rio 5</td>
							<td>Usu�rio@teste.com</td>
							<td class="actions">
								<a class="btn btn-danger btn-xs" href="#">Inativo</a>
							</td>
							<td class="actions">
								<a type="submit" class="btn btn-primary" href="editUser.html">Editar</button></a>
							</td>
							<td class="actions">
								<a type="submit" class="btn btn-danger" href="#">Excluir</button></a>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<br>
			<div class="row">
				<div class="col-md-12">
					<a type="submit" class="btn btn-success" href="registerUser.html">Adicionar</button></a>
				</div>
			</div>
		</div> 
	</div>
	
	<footer class="footer">
		<div class="container">
			<p>Copyright � 2018 ButterByte Vers�o 1.0</p>
		
		</div>
	</footer>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/crud-projeto.js"></script>
  </body>
</html>


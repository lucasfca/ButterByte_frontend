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
	<link rel="stylesheet" type="text/css" href="css/registerHoliday.css">
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
	
	</br>
	<div id="main" class="container">
		<h4 class="page-header">Adicionar Feriado</h4>
		<hr>
		<form>
					<div class="row">
				<div class="form-group col-md-6">
					<label for="estado">Estado</label>
					<select input type="text" class="form-control" id="estado">
					    <option value="estado"><Selecione o Estado ></option> 
						<option value="ac">Acre</option> 
						<option value="al">Alagoas</option> 
						<option value="am">Amazonas</option> 
						<option value="ap">Amap�</option> 
						<option value="ba">Bahia</option> 
						<option value="ce">Cear�</option> 
						<option value="df">Distrito Federal</option> 
						<option value="es">Esp�rito Santo</option> 
						<option value="go">Goi�s</option> 
						<option value="ma">Maranh�o</option> 
						<option value="mt">Mato Grosso</option> 
						<option value="ms">Mato Grosso do Sul</option> 
						<option value="mg">Minas Gerais</option> 
						<option value="pa">Par�</option> 
						<option value="pb">Para�ba</option> 
						<option value="pr">Paran�</option> 
						<option value="pe">Pernambuco</option> 
						<option value="pi">Piau�</option> 
						<option value="rj">Rio de Janeiro</option> 
						<option value="rn">Rio Grande do Norte</option> 
						<option value="ro">Rond�nia</option> 
						<option value="rs">Rio Grande do Sul</option> 
						<option value="rr">Roraima</option> 
						<option value="sc">Santa Catarina</option> 
						<option value="se">Sergipe</option> 
						<option value="sp">S�o Paulo</option> 
						<option value="to">Tocantins</option> 
					</select>
				</div>
				<div class="form-group col-md-6">
					<label for="cidade">Cidade</label>
					<select input type="list" class="form-control" id="cidade" name="cidade">
						<option value="cidade">Cidade</option> 
					</select>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-12">
					<label for="feriado">Feriado Espec�fico</label>
					<input type="text" class="form-control" id="feriado" placeholder="Especifique o feriado">
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-5">
					<div class="well">
						<div id="datetimepicker4" class="input-append">
							<label for="date">In�cio</label>
							<input type="date" data-format="dd-MM-yyyy" class="form-control" id="date" placeholder="__/__/____">
								<span class="add-on">
									<i data-time-icon="icon-time" data-date-icon="icon-calendar"></i>
								</span>
						</div>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="form-group col-md-5">
					<div class="well">
						<div id="datetimepicker4" class="input-append">
							<label for="date">Final</label>
							<input type="date" data-format="dd-MM-yyyy" class="form-control" id="date" placeholder="__/__/____">
								<span class="add-on">
									<i data-time-icon="icon-time" data-date-icon="icon-calendar"></i>
								</span>
						</div>
					</div>
				</div>
			</div>

			<script type="text/javascript">
				$(function() {
					$('#datetimepicker4').datetimepicker({
						pickTime: false
					});
				});
			</script>

			

			<div class="row">
				<div class="col-md-12">
				<button type="submit" class="btn btn-success">Salvar</button>
					<button type="reset" class="btn btn-success">Cancelar</button>
				</div>
			</div>
		</form>
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
	<script type="text/javascript" src="js/crud-feriado.js"></script>
  </body>
</html>
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
	<link rel="stylesheet" type="text/css" href="css/registerProject.css">
	<link rel = "shortcut icon" type = "image/x-icon" href = "imagens/icon-admin.png"/>
	
	<title>E-Calendário</title>

  </head>
  <body>
	<!--div class="container-fluid"-->
	<header id="main-header">	
			<div class="wrapper">
				<nav class="navbar navbar-expand-sm  navbar-dark">
					<a class="navbar-brand" href="home.html">E-Calendário</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
					<span class="navbar-toggler-icon"></span>
					</button>
					
					<div class="collapse navbar-collapse" id="collapsibleNavbar">
						<ul class="navbar-nav">
							<li class="nav-item">
								<a class="nav-link" href="home.html">Início</a>
							</li>
							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
									Cadastrar
								</a>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="registerProject.html">Projeto</a>
								</div>
							</li>
							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
									Relatório
								</a>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="listProject.html">Visualizar</a>
								</div>
						</ul>
					</div> 
				</nav>
			</div>
		</div>
	</header>
	</br>
	<div id="main" class="container">
		<h4 class="page-header">Cadastrar Projeto</h4>
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
						<option value="ap">Amapá</option> 
						<option value="ba">Bahia</option> 
						<option value="ce">Ceará</option> 
						<option value="df">Distrito Federal</option> 
						<option value="es">Espírito Santo</option> 
						<option value="go">Goiás</option> 
						<option value="ma">Maranhão</option> 
						<option value="mt">Mato Grosso</option> 
						<option value="ms">Mato Grosso do Sul</option> 
						<option value="mg">Minas Gerais</option> 
						<option value="pa">Pará</option> 
						<option value="pb">Paraíba</option> 
						<option value="pr">Paraná</option> 
						<option value="pe">Pernambuco</option> 
						<option value="pi">Piauí</option> 
						<option value="rj">Rio de Janeiro</option> 
						<option value="rn">Rio Grande do Norte</option> 
						<option value="ro">Rondônia</option> 
						<option value="rs">Rio Grande do Sul</option> 
						<option value="rr">Roraima</option> 
						<option value="sc">Santa Catarina</option> 
						<option value="se">Sergipe</option> 
						<option value="sp">São Paulo</option> 
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
					<div class="form-group col-md-6">
						<div class="well">
							<div id="datetimepicker4" class="input-append">
								<label for="date">Data de Início</label>
								<input type="date" data-format="dd-MM-yyyy" class="form-control" id="date" placeholder="__/__/____">
									<span class="add-on">
										<i data-time-icon="icon-time" data-date-icon="icon-calendar"></i>
									</span>
							</div>

						</div>
					</div>
				

<!--				<div class="row">		
					<div class="form-group col-md-5">
						<div class="well">
					<div id="datetimepicker4" class="input-append">
							<label for="date">Dias Úteis</label>
								<input type="date" data-format="dd-MM-yyyy" class="form-control" id="date" placeholder="__/__/____">
									<span class="add-on">
										<i data-time-icon="icon-time" data-date-icon="icon-calendar"></i>
									</span>
							</div>

						</div>
					</div>				
				</div>				
-->						
					<div class="form-group col-md-6">
						<div class="well">
							<div id="datetimepicker4" class="input-append">
							<label for="date">Data Final</label>
								<input type="date" data-format="dd-MM-yyyy" class="form-control" id="date" placeholder="__/__/____">
									<span class="add-on">
										<i data-time-icon="icon-time" data-date-icon="icon-calendar"></i>
									</span>
							</div>
						</div>
					</div>				
				</div>
			</form>
			
			<script type="text/javascript">
				$(function() {
					$('#datetimepicker4').datetimepicker({
						pickTime: false
					});
				});
				
				function carregarComentarios() {
		var subUrl = $(location).attr('href').substring(7);
		subUrl = 'parametros=' + subUrl.substring(subUrl.indexOf('/') + 1);
		$.getJSON('/obter-comentarios.php', {url:subUrl,page:paginaComentario}, function(x){
			var i = 0;
			$.each(x, function() {
				var corFundo = '#ffffff';
				if(i % 2) {
					corFundo = '#ccccff';
				}
				
				$('table#listaComentarios').append('<tr><td bgcolor=\"' + corFundo + '\"><p>' + this['Mensagem'] + '<font size=1><br><i>' + this['Nome'] + ' - ' + this['dataHora'] + '</i>' + this['Resposta'] + '</p></td></tr>');
				i++;
			});
		});
	}
	$(document).ready(function() {
//		carregarComentarios();
	});
	$(window).scroll(function() {
		if($(window).scrollTop() + $(window).height() >= $(document).height() - 800) {
			paginaComentario++;
			carregarComentarios();
		};
	});
	$(function() {
		$("#anoFeriadosMunicipais").live("blur", function() {
			atualizar_link_calendario();
		});
		$("#estadosFeriadosMunicipais").live("blur", function() {
			var estado = $("#estadosFeriadosMunicipais").val().split('/')[1];
			if(estado.trim().length > 0) {
				$("#cidadesFeriadosMunicipais").empty();
				$("#cidadesFeriadosMunicipais").append('<option value="">Aguarde ...</option>');
				$.get("/obter-cidades-do-estado-para-calendario.php", {uf: estado}, function(resposta) {
					$("#cidadesFeriadosMunicipais").empty();
					$("#cidadesFeriadosMunicipais").append('<option value="">&lt;Cidade&gt;</option>');
					$("#cidadesFeriadosMunicipais").append(resposta);
				});
				atualizar_link_calendario();
			};
		});
		$("#cidadesFeriadosMunicipais").live("blur", function() {
			atualizar_link_calendario();
		});
		function atualizar_link_calendario() {
			var ano = $("#anoFeriadosMunicipais").val();
			var infoEstado = $("#estadosFeriadosMunicipais").val().split('/');
			var nomeEstado = $('#estadosFeriadosMunicipais option:selected').text();
			var nomeCidade = $('#cidadesFeriadosMunicipais option:selected').text();
			var uf = infoEstado[0];
			var estado = infoEstado[1];
			var pastaEstado = infoEstado[2];
			var pastaMunicipio = $("#cidadesFeriadosMunicipais").val();
			$("#linkMostrarCalendario").attr("href", '/calendario/' + ano + '/' + pastaEstado + '/' + pastaMunicipio);
			$("#linkMostrarCalendario").text('Ver calendário ' + ano + ' de ' + nomeCidade + '-' + uf);
		}
	});

			</script>
			
			

			

			<div class="row">
				<div class="col-md-12">
					<a type="returnDataUtil" class="btn btn-success" href="#">Calcular</button></a>
					<a type="submit" class="btn btn-success" href="registerProject.html">Novo</button></a>					
				</div>
			</div>
		</form>
	</div>
	
	<footer class="footer">
		<div class="container">
			<p>Copyright © 2018 ButterByte Versão 1.0</p>
		
		</div>
	</footer>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/registerProject.js"></script>
  </body>
</html>
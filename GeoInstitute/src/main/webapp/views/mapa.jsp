<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Mapa</title>

<!-- CSS -->
<link href="<c:url value='/resources/css/bootstrap.css' />"
	rel="stylesheet" type="text/css" />
<link href="<c:url value='/resources/css/ol.css' />" rel="stylesheet"
	type="text/css" />
<!-- <link rel='stylesheet' href='http://ol3js.org/en/master/css/ol.css'> -->

<!-- JS -->

<script type="text/javascript"
	src="<c:url value="/resources/js/jquery-2.1.4.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/mapa.js" />"></script>
<script type="text/javascript"
	src="http://openlayers.org/api/OpenLayers.js"></script>
<script type="text/javascript"
	src="http://maps.googleapis.com/maps/api/js?v=3.5&sensor=false"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>

<!--<script type="text/javascript" src="<c:url value="/resources/js/OpenLayers.js" />"></script>-->
<!-- <script src='http://ol3js.org/en/master/build/ol.js'></script> -->

<style>
#map {
	height: 500px;
	width: 600px;
	padding-left: 50px;
}

body {
	height: 150%;
}

footer {
	display: block;
	padding-top: 50%;
	bottom: 0;
}

html {
	height: 100%;
}

.popup {
	background: white;
	border-radius: 5px;
	width: 240px;
	height: 200px;
}

.closebtn {
	position: absolute;
	right: 4px;
}

.corFonteG {
	font-size: 20px;
	color: white
}

.corFonteP {
	font-size: 14px;
	color: white
}
</style>
</head>
<body class="container">

	<div>

		<div>
			<header>
				<nav class="navbar navbar-dark bg-primary">
					<div class="container-fluid">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1"
								aria-expanded="false">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<a class="navbar-brand corFonteG" href="#">GeoIFPE</a>
						</div>

						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li><a href="#" class="corFonteP">Home</a></li>
							</ul>
							<form class="navbar-form navbar-left" role="search">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Search">
								</div>
								<button type="submit" class="btn btn-default">Submit</button>
							</form>
						</div>
					</div>
				</nav>
			</header>
		</div>

		<div class="container">
			<div class="jumbotron" id="jumbo">
				<h2>Bloco A - IFPE</h2>
				<p style="font-size: 16px">A Diretoria de Administração (DAD) é
					responsável pela execução orçamentária e, com base no orçamento
					disponível, provê todos os serviços e aquisições de bens (limpeza,
					vigilância, manutenção predial) para o bom funcionamento do campus.
					A DAD também é responsável pelo gerenciamento da concessão de
					diárias e passagens aéreas, além de servir de suporte
					administrativo para o gerenciamento financeiro do Programa de
					Assistência Estudantil do Campus Recife</p>
				<p>
					<a class="btn btn-primary btn-lg"
						href="http://www.ifpe.edu.br/campus/recife/administracao"
						target="_blank" role="button">Leia mais</a>
				</p>
			</div>
		</div>

		<div>
			<table class="table table-responsive">
				<tr>
					<th>Campus</th>
					<th>Informações</th>
				</tr>
				<tr>
					<td>
						<div id="map"></div>
						<div id="coordinates"></div>
					</td>
					<td>

						<div>
							<table class="table table-bordered">
								<tr>
									<th>Departamento</th>
									<td>Diretoria de Administração (DAD)</td>
								</tr>
								<tr>
									<th>Diretor</th>
									<td>Cícero Carlos Ramos de Brito</td>
								</tr>
								<tr>
									<th>E-mail</th>
									<td>dad@recife.ifpe.edu.br</td>
								</tr>
								<tr>
									<th>Telefone</th>
									<td>+55 (81) 2125-1614</td>
								</tr>
								<tr>
									<th>Funcionamento</th>
									<td>Segunda a sexta | 8h às 20h</td>
								</tr>
								<tr>
									<th>Localização</th>
									<td>Térreo</td>
								</tr>
							</table>
						</div>

					</td>
				</tr>
			</table>
		</div>

		<div>
			<footer>
				<nav class="navbar navbar-dark bg-primary">
					<!-- default ou inverse -->
					<div class="container-fluid">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1"
								aria-expanded="false">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<a class="navbar-brand corFonteG" href="#">GeoIFPE</a>
						</div>
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">
							<p class="navbar-text">Todos os direitos reservados</p>
						</div>
						<!-- /.navbar-collapse -->
					</div>
					<!-- /.container-fluid -->
				</nav>
			</footer>
		</div>
	</div>

</body>
</html>

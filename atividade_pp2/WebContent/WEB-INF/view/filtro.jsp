<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!--  taglibs -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


<style type="text/css">
#div_form {
	float: none;
	margin: 0 auto;
}

button {
	width: 100%
}

.fonteAliada {
	text-align: center;
}

div.gallery {
	margin: 10px;
	border: 1px solid #ccc;
	float: left;
	width: 233px;
}

div.gallery:hover {
	border: 1px solid #777;
}

div.gallery img {
	width: 100%;
	height: auto;
}

div.desc {
	padding: 15px;
	text-align: center;
}
</style>
</head>
<body>
	<c:import url="menu.jsp" />

	<br>
	<h3 class="fonteAliada">Filtro</h3>
	<hr>

	<div class="container">

		<div class="col-sm-5" id="div_form">

			<form action="pesquisar">
				<div class="form-group">
					<br> <label for="titulo">Título:</label> <input type="text"
						class="form-control" name="titulo" id="titulo"
						placeholder="Informe o título da série" required>
				</div>

				<button type="submit" class="btn btn-primary">Filtrar</button>
			</form>

		</div>
		<br><br>
	
		<c:if test="${ listaSerie.size() == 0}">
			<h4 style="text-align:center; color: red;">Não existe nenhuma série com este título</h4>
		</c:if>
		

		<c:forEach var="series" items="${listaSerie}">
			<div class="gallery">
				<a target="_blank"
					href="https://go.sevenidiomas.com.br/wp-content/uploads/2017/05/se_seven.png">
					<img
					src="https://go.sevenidiomas.com.br/wp-content/uploads/2017/05/se_seven.png"
					alt="Cinque Terre" width="300" height="200">
				</a>
				<div class="desc">Título: ${series.titulo}</div>
				<div class="desc">Sinopse: ${series.sinopse}</div>
				<div class="desc">Temporada: ${series.qtdetemporada}</div>
				<div class="desc">
					Disponível na netflix:
					<c:choose>
						<c:when test="${series.disponivel == 1}">
					Sim
					</c:when>
						<c:otherwise>
					Não
					</c:otherwise>
					</c:choose>
				</div>
			</div>
		</c:forEach>

	</div>




	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
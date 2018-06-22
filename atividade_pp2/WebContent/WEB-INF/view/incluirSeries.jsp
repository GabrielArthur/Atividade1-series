<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--  taglibs -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Incluir Séries</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<style type="text/css">
		
	#div_form{
		float: none; margin: 0 auto;
	}

	.tamanhoInput{
		width: 40%;
	}
	
	
</style>
</head>
<body>

<c:import url="menu.jsp" />

<br>
	<h3 align="center">Incluir Séries</h3>
	<hr>
	<div class="container">
		
			<div class="col-sm-5" id="div_form" ><br>
				 <c:if test="${not empty mensagem}">
					<div class="alert alert-success alert-dismissible fade in">
					    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					    ${mensagem}
  					</div>
				</c:if>
				<form action="salvar" method="post">
					<div class="form-group">
						<label for="titulo">Título:</label>
						<input type="text" required  name="titulo" class="form-control" id="titulo" placeholder="Título">
					</div>	
					<div class="form-group tamanhoInput">
						<label for="data">Ano:</label>
						<input type="number" required  maxlength="4" name="ano" class="form-control" id="data">
					</div>

					<div class="form-group">
						<label for="sinopse">Sinopse:</label>
						<textarea name="sinopse" required id="sinopse" maxlength="1400" placeholder="Digite aqui uma Sinopse" class="form-control"></textarea>
					</div>

					<div class="form-group ">
						<label for="netflix">Disponivel no Netflix:</label><br>
						Sim <input type="radio" checked value="1" id="netflix" name="disponivel">
						Não <input type="radio" value="0" name="disponivel" id="netflix">
					</div>

					<div class="form-group tamanhoInput">
						<label for="temp">Quantidade de Temporadas:</label>
						<input name="qtdetemporada" required type="number" maxlength="2" class="form-control" id="temp" placeholder="temp">
					</div>
					<button  type="submit" class="btn btn-primary" ">Cadastrar Série</button>	
				</form><br><br>
			</div>
		</div>
	



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
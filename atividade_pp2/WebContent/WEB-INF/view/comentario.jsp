<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!--  taglibs -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Comentário</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<style type="text/css">
		
	#div_form{
		float: none; margin: 0 auto;
	}

	.tamanhoInput{
		width: 30%;
	}
	
	
</style>
</head>
<body>
	<c:import url="menu.jsp" />

	<br>
	<h3 align="center">Incluir Comentário</h3>
	<hr>
	<div class="container">
		
			<div class="col-sm-5" id="div_form" ><br><br>
				<form action="salvarComentario" method="post">	
				
					 <c:if test="${not empty mensagem_comentario}">
						<div class="alert alert-success alert-dismissible fade in">
						    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						    ${mensagem_comentario}
	  					</div>
					</c:if>
					
					<div class="form-group">
						<label for="titulo">Título:</label>
						<input type="text" required name="titulo"  class="form-control" id="titulo" placeholder="Título da série">
					</div>	

					<div class="form-group">
						<label for="temp">Temporada:</label>
						<input type="number" required name="temporada" class="form-control tamanhoInput" id="temp" placeholder="temp" >

						<label for="ep">Episódio:</label>
						<input type="number" required name="episodio" class="form-control tamanhoInput" id="ep" placeholder="ep">
					</div>

					<div class="form-group">
						<label for="comentario">Comentário:</label>
						<textarea rows="5" required name="comentario" cols="4" class="form-control" id="comentario" placeholder="Comente aqui..."></textarea>
					</div>  
					<div class="form-group">
						Gostei <input checked type="radio" value="1" name="avaliacao"  >
						Não gostei <input type="radio" value="0" name="avaliacao" >
					</div>  

					<button type="reset" class="btn btn-default">&nbsp; Limpar &nbsp;</button> &nbsp;
					<button type="submit" class="btn btn-primary">&nbsp; Enviar &nbsp; </button>
					
				</form>
		</div>
	</div>


	



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
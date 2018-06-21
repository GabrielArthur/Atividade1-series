<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!--  taglibs -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Comentários</title>
<meta charset="utf-8">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<style type="text/css">
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
}
</style>
</head>
<body>

	<c:import url="menu.jsp" />

		<div class="gallery">
			<a target="_blank" href="https://go.sevenidiomas.com.br/wp-content/uploads/2017/05/se_seven.png"> <img src="https://go.sevenidiomas.com.br/wp-content/uploads/2017/05/se_seven.png"
				alt="Cinque Terre" width="300" height="200">
			</a>
			<div class="desc">Título: </div>
			<div class="desc">Temporada: </div>
			<div class="desc">Episódio: </div>
			<div class="desc">Comentário: </div>
			<div class="desc">Avaliação: </div>
			
		</div>


	</div>
	</div>



	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
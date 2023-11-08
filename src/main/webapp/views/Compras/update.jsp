<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
    
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="./assets/css/mvc.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
<title>Traveland | Atualizar Compras</title>
</head>
<body>
	<main>
		<header class="header">
			<h1>Atualizar Compras</h1>
		</header>
		
		<jsp:include page="../../components/menu.jsp">
			<jsp:param name="home" value="./mvc.jsp" />
			<jsp:param name="usuarios" value="Usuario" />
			<jsp:param name="destinos" value="./Destinos" />
			<jsp:param name="compras" value="./Compras" />
		</jsp:include>
	
	
		<div class="container py-3">
			<form action="Compras-update">
				<h2 class="text-center">Atualizar</h2>
					<input type="hidden" id="ID" name="ID" value="${Compras.ID}" />
					<div class="form-group mb-3">
					<label for="usuario" class="form-label"> Usuario </label> 
					<select id="usuario" name="usuario" class="form-control">
						<option value="">Escolha um Usuario</option>
						<jstl:forEach items="${listaUsuarios}" var="u">
							<option value="${u.ID}">${u.nome_usuario}</option>
						</jstl:forEach>
					</select>
				</div>
				
				
				<div class="form-group mb-3">
					<label for="destinos" class="form-label"> Destino</label> 
					<select id="destinos" name="destinos" class="form-control">
						<option value="">Escolha um Destino</option>
						<jstl:forEach items="${listaDestinos}" var="d">
							<option value="${d.ID}">${d.nome_destino}</option>
						</jstl:forEach>
					</select>
				</div>
				
				<div class="form-group mb-3">
					<label for="data_ida" class="form-label" >Data Ida </label> <input
					type="text" id="data_ida" name="data_ida" class="form-control" value="">
				</div>
				
				<div class="form-group mb-3">
					<label for="data_volta" class="form-label" >Data Volta </label> <input
					type="text" id="data_volta" name="data_volta" class="form-control" value="">
				</div>
				
				<div class="form-group mb-3">
					<label for="data_compra" class="form-label" >Data Compra </label> <input
					type="text" id="data_compra" name="data_compra" class="form-control" value="">
				</div>
				
				<input type="hidden" id="total_compra" name="total_compra" value="500" />
				
				<button type="submit" class="btn btn-primary">Enviar</button>
				<a href="./Compras" class="btn btn-danger"
					style="margin-left: 10px"> Cancelar </a>
			</form>
		</div>

	</main>
	
	<footer>

	</footer>

	<script src="script.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>
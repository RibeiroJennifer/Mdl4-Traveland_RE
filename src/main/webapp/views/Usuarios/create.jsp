<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="../../assets/css/mvc.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
<title>Traveland | Criar Usuarios</title>
</head>
<body>
	<main>
		<header class="header">
			<h1>Criar Usuarios</h1>
		</header>
	
		<jsp:include page="../../components/menu.jsp">
			<jsp:param name="home" value="./mvc.jsp" />
			<jsp:param name="usuarios" value="Usuario" />
			<jsp:param name="destinos" value="Destinos" />
			<jsp:param name="compras" value="Compras" />
		</jsp:include>
		
		<div class="container py-3">
            <form action="../../Usuario-create">
	            <h2 class="text-center">Criar</h2>
	            <div class="form-group mb-3">
	                <label for="nome_usuario" class="form-label">
	                    Nome
	                </label>
	                <input type="text" id="nome_usuario" name="nome_usuario" class="form-control" value="" />
	            </div>
	            
	           <div class="form-group mb-3">
	                <label for="cpf" class="form-label">
						CPF:</label>
        				<input type="text" id="cpf" name="cpf" class="form-control" value="">
	           </div>
	                
	            <div class="form-group mb-3">
	                <label for="email" class="form-label">
	                    Email
	                </label>
	                <input type="email" id="email" name="email" class="form-control" value="" />
	            </div>
	            
	            <div class="form-group mb-3">
	                <label for="senha" class="form-label">
	                    Senha
	                </label>
	                
	                <input type="password" id="senha" name="senha" class="form-control" value="" />
	            </div>
	
	            <button type="submit" class="btn btn-primary">
	                Enviar
	            </button>
	            <a href="../../Usuario" class="btn btn-danger" style="margin-left: 10px">
	                Cancelar
	            </a>
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
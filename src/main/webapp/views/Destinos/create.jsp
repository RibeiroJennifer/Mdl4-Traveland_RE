<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="../../assets/css/index.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
<title>Traveland | Criar Destinos</title>
</head>
<body>
	<main>
		<header class="header">
			<h1>Criar Destinos</h1>
		</header>
	
		<jsp:include page="../../components/menu.jsp">
			<jsp:param name="home" value="./index.jsp" />
			<jsp:param name="usuarios" value="Usuario" />
			<jsp:param name="destinos" value="Destinos" />
			<jsp:param name="compras" value="Compras" />
		</jsp:include>	
		
		<div class="container py-3">
            <form action="../../Destinos-create">
	            <h2 class="text-center">Criar</h2>
	            <div class="form-group mb-3">
	            
	             <label for="nome_destino" class="form-label">
	                    Nome do destino
	                </label>
	                <input type="text" id="nome_destino" name="nome_destino" class="form-control" value="" />
	            </div>
	            
	            <div class="form-group mb-3">
	                <label for="pais" class="form-label">
	                    País
	                </label>
	                <input type="text" id="pais" name="pais" class="form-control" value="" />
	            </div>
	            
	            <div class="form-group mb-3">
	                <label for="estado" class="form-label">
	                    Estado
	                </label>
	                <input type="text" id="estado" name="estado" class="form-control" value="" />
	            </div>
	            
	            <div class="form-group mb-3">
	                <label for="cidade" class="form-label">
	                    Cidade
	                </label>
	                <input type="text" id="cidade" name="cidade" class="form-control" value="" />
	            </div>
	           
	           <div class="form-group mb-3">
	                <label for="preco" class="form-label">
	                    Preço
	                </label>
	                <input type="number" id="preco" name="preco" class="form-control" step="0.01" value="" />
	            </div>
	
	            <button type="submit" class="btn btn-primary">
	                Enviar
	            </button>
	            <a href="../../Destinos" class="btn btn-danger" style="margin-left: 10px">
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
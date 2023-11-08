<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>

<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="./assets/css/mvc.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
<title>Traveland | Usuarios</title>
</head>
<body>
	<main>
		<header class="header">
			<h1>Usuarios</h1>
		</header>
	
		<jsp:include page="../../components/menu.jsp">
			<jsp:param name="home" value="./mvc.jsp" />
			<jsp:param name="usuarios" value="Usuario" />
			<jsp:param name="destinos" value="Destinos" />
			<jsp:param name="compras" value="Compras" />
		</jsp:include>		
		
		<section class="container">
		
		<div class="p-4">
		<a href="./views/Usuarios/create.jsp" class="btn btn-primary mb-2 botao1">
		Novo Usuario</a>
		</div>
		
		<table class="table table-hover">
		<thead class="table-dark">
		<tr>
		<th scope="col">ID</th>
		<th scope="col">Nome</th>
		<th scope="col">Email</th>
		<th scope="col">CPF</th>
		<th scope="col">Ações</th>
		</tr>
		</thead>
		
					<tbody>
						<jstl:forEach items="${listaUsuarios}" var="u">
							<tr>
								<td>${u.ID}</td>
								<td>${u.nome_usuario}</td>
								<td>${u.email}</td>
								<td>${u.cpf}</td>
								<td>
									<div class="d-flex">
										<a href="Usuario-edit?ID=${u.ID}" class="mx-1" title="Editar">
											<i class="ri-file-edit-line"></i>
										</a> 
										<a href="Usuario-delete?ID=${u.ID}" class="mx-1" title="Cancelar"
											onclick="return confirm('Deseja excluir o usuario ${u.nome_usuario}.')">
											<i class="ri-delete-bin-2-line"></i>
										</a>
									</div>
								</td>
							</tr>
						</jstl:forEach>

		</tbody>
		</table>
		</section>
	</main>
	<script src="script.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"></script>
</body>
</html>
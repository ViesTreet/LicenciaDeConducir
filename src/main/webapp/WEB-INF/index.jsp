<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="mt-5 pt-5 text-center">
			<a href="/persons/new" class="btn btn-info">Crear nuevo Usuario</a>
			<a href="/licenses/new" class="btn btn-warning">Crear nueva Licencia</a>
		</div>
		
		<div class="d-flex justify-content-center flex-wrap mt-5">
			<c:forEach items="${usuarios}" var="usuario">
				<div class="col-12 d-flex justify-content-center flex-wrap mt-2">
					<a href="/persons/${usuario.id}" class="btn btn-primary mt-2">${usuario.nombre} ${usuario.apellido}</a>
				</div>
			</c:forEach>
		
		</div>
	
	</div>
</body>
</html>

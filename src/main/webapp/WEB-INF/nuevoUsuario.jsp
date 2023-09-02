<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nuevo Usuario</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="d-flex justify-content-center flex-wrap mt-5">
			<form:form action="/persons/new" method="POST" modelAttribute="nuevaPersona">
				<form:label path="nombre">Nombre: </form:label>
				<form:input path="nombre" class="form-control"/>
				<form:errors path="nombre" class="text-danger"/>
				<br>
				<form:label path="apellido">Apellido: </form:label>
				<form:input path="apellido" class="form-control"/>
				<form:errors path="apellido" class="text-danger"/>
				<br>
				<input type="submit" value="Guardar" class="btn btn-success">
			</form:form>
		</div>
	</div>
</body>
</html>

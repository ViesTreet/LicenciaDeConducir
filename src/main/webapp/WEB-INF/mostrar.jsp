<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mostrar Usuario</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
	<div class="container pb-5">
		<div class="text-center mt-5"><h2>${usuario.nombre} ${usuario.apellido}</h2></div>
		<div class="text-center mt-2"><p>Numero de licencia: ${usuario.licencia.numeroLicencia}</p></div>
		<div class="text-center mt-2"><p>Region: ${usuario.licencia.region}</p></div>
		<div class="text-center mt-2"><p>Fecha de expiracion: ${usuario.licencia.expiracion}</p></div>

	
	
	</div>
</body>
</html>

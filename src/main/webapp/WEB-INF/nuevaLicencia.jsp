<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nueva Licencia</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
	<div class="container pb-5">
		<div class="d-flex justify-content-center flex-wrap mt-5">
			<form:form action="/licenses/new" method="POST" modelAttribute="nuevaLicencia">
				<form:label path="usuario">Usuario: </form:label>
				<form:select path="usuario" class="form-select">
					<c:forEach items="${usuarios}" var="usuario">
						<form:option value="${usuario.id}">${usuario.nombre} ${usuario.apellido}</form:option>
					</c:forEach>
				</form:select>
				<br>
				<form:label path="region">Region: </form:label>
				<form:input path="region" class="form-control"/>
				<form:errors path="region" class="text-danger"/>
				<br>
				<form:label path="expiracion">Fecha de expiracion(yyyy-MM-dd):</form:label>
				<form:input path="expiracion" class="form-control"/>
				<form:errors path="expiracion" class="text-danger"/>
				<br>
				<input type="submit" value="Guardar" class="btn btn-success">
			</form:form>
		
		</div>
	
	</div>
</body>
</html>

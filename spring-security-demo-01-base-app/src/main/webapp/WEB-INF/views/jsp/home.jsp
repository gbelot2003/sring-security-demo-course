<!-- Con este tag hablilitamos la ayuda de jsp para formularios -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- Con este tag hablilitamos la ayuda de security jsp -->
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to Home Page</title>
</head>
<body>
	<h2>Demo Company</h2>
	<hr />
	<p>Welcome to Demo Company home page</p>
	<hr />
	<p>
	   User: <security:authentication property="principal.username" />
	   <br>
	   <br>
	   Roles: <security:authentication property="principal.authorities" />
	</p>
	<hr />
	<form:form action="${ pageContext.request.contextPath }/logout" 
	   method="POST">
	   <input type="submit" value="logout" />
	</form:form>
</body>
</html>
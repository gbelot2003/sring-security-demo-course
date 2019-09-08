<!-- Con este tag hablilitamos la ayuda de jsp para formularios -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- Con este tag hablilitamos la ayuda de logica para jsp -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- fin -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
    <style type="text/css">
        .error{ color: red; }
    </style>
</head>
<body>
    <h3>My Custom Login Page</h3>
    
    <form:form action="${ pageContext.request.contextPath }/login-auth"
        method="POST">
        
        <c:if test="${ param.error != null }">
            <i class="error">Sorry, you enter an invalid user/password.</i>
        </c:if>
        
        <p>User Name: <input type="text" name="username" value="" 
            placeholder="User Name" /></p>
        <p>Password: <input type="password" name="password" /></p>
        <p><input type="submit" value="SingUp" /></p>
    </form:form>
</body>
</html>
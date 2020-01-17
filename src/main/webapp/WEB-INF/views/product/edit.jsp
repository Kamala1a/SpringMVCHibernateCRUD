<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Edit a Product</h3>
	<form:form method="post" modelAttribute="product" action = "${pageContext.request.contextPath}/product/edit">
	
		<table>
			<tr>
				<td>Name</td>
				<td><form:input path="name"/></td>
			</tr>
			
			<tr>
				<td>Price</td>
				<td><form:input path="price"/></td>
			</tr>
			
			<tr>
				<td>Quantity</td>
				<td><form:input path="quantity"/></td>
			</tr>
			
			<tr>
				<td>&nbsp;</td>
				<td><input type = "submit" value = "Save" /></td>
				<form:hidden path="id"/>
			</tr>
		</table>
	
	</form:form>
</body>
</html>
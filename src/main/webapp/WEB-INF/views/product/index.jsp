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
	
	<h2>Product List</h2>
	<a href="${pageContext.request.contextPath}/product/add">Add New Product</a>
	<table cellpadding = "2" cellspacing = "2" border = "1">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Price</th>
			<th>Quantity</th>
			<th>Option</th>
		</tr>
		
		<c:forEach var = "product" items = "${products}">
			<tr>
				<td>${product.id}</td>
				<td>${product.name}</td>
				<td>${product.price}</td>
				<td>${product.quantity}</td>
				<td>
					<a href = "${pageContext.request.contextPath}/product/edit/${product.id}">Edit</a>
					<a href = "${pageContext.request.contextPath}/product/delete/${product.id}">Delete</a>
				</td>
			</tr>
		</c:forEach>
		
	</table>
	
</body>
</html>
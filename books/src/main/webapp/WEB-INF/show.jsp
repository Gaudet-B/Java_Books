<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<meta charset="ISO-8859-1">
		<title> B O O K S </title>
	</head>
	<body>
		<div class="container p-3">
			<h1 class="display-3 mb-4"><c:out value="${ book.title }"/></h1>
			<p><strong>Description: </strong> <c:out value="${ book.description }"/></p>
			<p><strong>Language: </strong> <c:out value="${ book.language }"/></p>
			<p><strong>Number of Pages: </strong> <c:out value="${ book.numberOfPages }"/></p>
		</div>
	</body>
</html>
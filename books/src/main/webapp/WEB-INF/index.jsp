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
			<h1 class="display-3 mb-4">All Books</h1>
			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Title</th>
						<th scope="col">Language</th>
						<th scope="col"># Pages</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="book" items="${ books }">
					<tr>
						<th scope="row"><c:out value="${ book.id }"/></th>
						<td>
							<a href="/books/<c:out value='${ book.id }'/>" class="link-dark">
								<c:out value="${ book.title }"/>
							</a>
						</td>
						<td><c:out value="${ book.language }"/></td>
						<td><c:out value="${ book.numberOfPages }"/></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Questions Dashboard</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link href="resources/css/main.css" rel="stylesheet" type="text/css">
<link href="resources/css/header.css" rel="stylesheet" type="text/css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&family=Bebas+Neue&display=swap" rel="stylesheet">

</head>
<body>
    <div class="header">

    <div class="header-right">
    	<a href="/questions/new"><button id="btn1">Create New Question</button></a>

    </div>
		<div class="logo">
			Q&A
		</div>
		<div class="line">
			Explore. Imagine. Create
		</div>

    </div>
	<h1>Questions Dashboard</h1>
	<table>
	    <thead>
	        <tr>
	            <th>Questions</th>
	        </tr>
	    </thead>
    	<tbody>
	        <c:forEach items="${questions}" var="question">
	            <tr>
	                <td><a href="/questions/${question.id}"><c:out value="${question.question}"/></a> </td>
	               </tr>
	        </c:forEach>
    	</tbody>
	</table>
	<br/>

	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
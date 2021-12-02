<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Question</title>

<link href="resources/css/main.css" rel="stylesheet" type="text/css">
<link href="resources/css/header.css" rel="stylesheet" type="text/css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&family=Bebas+Neue&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style>
.logo{
  font-size: 50px;
  color: red;
  margin: 0px;
  position: relative;
  left:20px;
  width: 50%;
  letter-spacing:6px;

  padding-bottom:none;

}
.line{
     font-size: 15px;
     color: black;
    position: relative;
    background-color:grey;

}
.header-right{
	float: right;
	line-height: 25px;
	padding: 20px
}
.header{
padding-right: 30px 10px;
overflow: hidden;
margin: 0px;
background-color:black;
}
button{
 	border: none;
  color: black;
  padding: 10px 15px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 15px;
  background-color:lightgreen;
}
body{
font-family: 'Abril Fatface', cursive;
font-family: 'Bebas Neue', cursive;
}
h1{
color:red;
text-align:center;
font-size:50px;
letter-spacing:6px;
}
th{
font-size:30px;
letter-spacing:3px;

}
td{
font-size:20px;

}
</style>
</head>
<body>
<div class="header">

    <div class="header-right">
    	<a href="/questions"><button id="btn1">Go to dasboard</button></a>

    </div>
		<div class="logo">
			Q&A
		</div>
		<div class="line">
			Explore. Imagine. Create
		</div>

    </div>

	<h1>What is your question?</h1>
		<form:form action="/questions/create" method="post" modelAttribute="newQuestion">
		    <span style="color: red"><form:errors path="*"/>
		    </span>
		    <p>
		        <form:label path="question">Question:</form:label>
		        <form:input path="question"/>
		    </p>
		    <p>
		        <input type="submit" value="Submit"/>
		    </p>
		</form:form>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>		
</body>
</html>
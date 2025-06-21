<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

  header{
  		
  		background-color: teal;
  		color: white;
  		
	}

  nav{
  		display: flex;
		justify-content: center;
  
  }
	
	a{
	margin: 20px;
	text-decoration: none;
	font-size: 20px;
	color: white;
	padding: 10px;
	
	}
	
	a:hover{
		color:teal;
		background-color: white;
		padding: 9px;
		border:1px solid teal;
		border-radius: 20px;
		
	
	}
	
	
	
	h1{
		display: flex;
		justify-content: center;
		padding-top: 10px;
		margin: 0;
	}


</style>
</head>
<body>

	<header>
		
		<h1>First Web App</h1>
	<nav>
	<a href="home.jsp">HOME</a>
	<a href="reg.jsp">CREATE ACCOUNT</a>
	<a href="login.jsp">LOGIN</a>
	</nav>
	
	
	</header>
	
	<br><br><br><br>
</body>
</html>
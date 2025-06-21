<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<style>
	
	body{
	display: flex;
	flex-direction:column;
	justify-content: center;
	align-content: center;
	margin-top: 80px;
	
	
	}
	
	div{
		display: flex;
		justify-content: center;
		align-content: center;
		
		
		
	}
	form{
	background-color: teal;
		color: white;
		padding: 50px;
		border-radius: 50px;

	}

	input {
	
	display: flex;
	flex-direction: column;
	margin: auto ;
	margin-bottom: 20px;
	padding: 10px;
	border-radius: 10px;
	border: none;
	
	}
	
	button {
	background-color: white;
	color: teal;
	border: none;
	padding: 10px;
	margin-left:80px;
	border-radius: 10px;
	font-size: medium;
}


</style>
</head>
<body>

	<div>
	

	<form action="save">
	
		<h1>Enter the details</h1>
	
		<input type="text" name="id" placeholder="Enter id : ">
	
		<input type="text" name="name" placeholder="Enter your name : ">
		
		<input type="text" name="email" placeholder="Enter email : ">
		
		<input type="text" name="phone" placeholder="Enter phone : ">
		
		<input type="text" name="password" placeholder="Enter password : ">
	
		<input type="text" name="place" placeholder="Enter place : ">
		
		<button type="submit">Submit</button>
	
	</form>
	
	
	</div>
	
</body>
</html>
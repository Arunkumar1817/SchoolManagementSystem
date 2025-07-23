<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login Page</title>
<style>
body {
	font-family: Arial, sans-serif;
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: #d0eaff; 
	margin: 50px;
}

.container {
	width: 300px;
	padding: 20px;
	background: white;
	border-radius: 8px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	text-align: center;
}

h2 {
	color: #0077cc; 
}

label {
	font-weight: bold;
	display: block;
	text-align: left;
	color: #005f99;
}

input {
	width: 100%;
	padding: 8px;
	margin: 5px 0 15px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

button {
	width: 100%;
	padding: 10px;
	background-color: #00aaff;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

button:hover {
	background-color: #0077cc; 
}

.signup {
	margin-top: 10px;
}

.signup a {
	color: #0077cc;
	text-decoration: none;
	font-weight: bold;
}

.signup a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
	<div class="container">
		<h2>ADMIN LOGIN PAGE</h2>
		<form action="adminlogindto" method="get">
			<label for="email">Email:</label> 
			<input type="email" id="email" name="Email" required> 
			
			<label for="password">Password:</label>
			<input type="password" id="password" name="Password" required>

			<button type="submit">Submit</button>
		</form>
		<div class="signup">
			<span>Not a User?</span> <a href="adminSignup.jsp">Sign Up</a>
		</div>

		<%
		String mess = (String) request.getAttribute("msg");
		if (mess != null) {
		%>
		<p style="color: red; font-weight: bold;"><%= mess %></p>
		<%
		}
		%>
	</div>
</body>
</html>
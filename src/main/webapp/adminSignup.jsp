<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Signup</title>
<style>
body {
	font-family: Arial, sans-serif;
	display: flex;
	justify-content: center;
	align-items: center;
	margin: 50px;
	background-color: #d0eaff; 
}

.container {
	width: 300px;
	padding: 20px;
	background: white;
	border-radius: 8px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

h2 {
	text-align: center;
	color: #0077cc; 
}

label {
	font-weight: bold;
	display: block;
	margin-top: 10px;
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
</style>
</head>
<body>
	<div class="container">
		<h2>ADMIN SIGNUP FORM</h2>
		<form action="signupadmin" method="get">
			<label for="Id">ID:</label>
			<input type="text" id="id" name="Id" required>

			<label for="Name">Name:</label>
			<input type="text" id="name" name="Name" required>

			<label for="Contact">Contact:</label>
			<input type="text" id="Tamil" name="Contact" required>

			<label for="Email">Email:</label>
			<input type="text" id="English" name="Email" required>

			<label for="Password">Password:</label>
			<input type="text" id="Maths" name="Pass" required>

			<label for="confirmPassword">Confirm Password:</label>
			<input type="text" id="Science" name="confirmPassword" required>

			<button type="submit">Submit</button>
		</form>

		<%
		String mess = (String) request.getAttribute("msg");
		if (mess != null) {
		%>
		<p style="color: red; font-weight: bold;"><%=mess%></p>
		<%
		}
		%>
	</div>
</body>
</html>
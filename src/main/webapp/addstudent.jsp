<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.DAO.SaveAdminDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD STUDENT PAGE</title>
<style>
body {
	font-family: Arial, sans-serif;
	display: flex;
	justify-content: center;
	align-items: center;
	margin: 50px;
	background-color: #d6f0ff; 
}

.container {
	width: 320px;
	padding: 25px;
	background: #ffffff;
	border-radius: 10px;
	box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
}

h2 {
	text-align: center;
	color: #0077cc;
	margin-bottom: 20px;
}

label {
	font-weight: bold;
	color: #333;
}

input {
	width: 100%;
	padding: 8px;
	margin: 5px 0 15px;
	border: 1px solid #aad4f5;
	border-radius: 5px;
	background-color: #f0faff;
}

button {
	width: 100%;
	padding: 10px;
	background-color: #5bc0de; 
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-weight: bold;
}

button:hover {
	background-color: #31b0d5;
}
</style>
</head>
<body>
	<div class="container">
		<h2>ADD STUDENT PAGE</h2>
		<form action="asdh" method="get">
			<label for="id">ID:</label>
			<input type="text" id="id" name="Roll" required>

			<label for="name">Name:</label>
			<input type="text" id="name" name="Name" required>

			<label for="physics">Physics:</label>
			<input type="text" id="physics" name="Physics" required>

			<label for="chemistry">Chemistry:</label>
			<input type="text" id="chemistry" name="Chemistry" required>

			<label for="Maths">Maths:</label>
			<input type="text" id="Maths" name="Maths" required>

			<button type="submit">Submit</button>
		</form>
	</div>

	<script type="text/javascript">
		<% String mess = (String) request.getAttribute("msg"); %>
		<% if(mess != null) { %>
			alert("<%= mess %>");
			window.location.href = "adminhome.jsp";
		<% } %>
	</script>
</body>
</html>
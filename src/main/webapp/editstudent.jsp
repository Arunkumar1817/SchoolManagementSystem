<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Student</title>
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

	<%
	String idStr = request.getParameter("id");
	String name = request.getParameter("name");
	String phyStr = request.getParameter("physics");
	String chemStr = request.getParameter("chemistry");
	String mathsStr = request.getParameter("maths");

	int id = (idStr != null && !idStr.isEmpty()) ? Integer.parseInt(idStr) : 0;
	int phy = (phyStr != null && !phyStr.isEmpty()) ? Integer.parseInt(phyStr) : 0 ;
	int chem= (chemStr != null && !chemStr.isEmpty()) ? Integer.parseInt(chemStr) : 0;
	int maths = (mathsStr != null && !mathsStr.isEmpty()) ? Integer.parseInt(mathsStr) : 0;
	%>
	<div class="container">
		<h1>Edit Student</h1>
		<form action="editstudentasd"  method="post">
			<label>Id</label> <input type="number" name="id" value="<%=id%>"
				required readonly="readonly"><br>
			<br> <label>Name</label> <input type="text" name="name"
				value="<%=(name != null) ? name : "name"%>" required><br>
			<br> <label>Physics</label> <input type="number" name="physics"
				value="<%=phy%>" required><br>
			<br> <label>Chemistry</label> <input type="number"
				name="chemistry" value="<%=chem%>" required><br>
			<br> <label>Maths</label> <input type="number" name="maths"
				value="<%=maths%>" required><br>
			<br> <input type="submit" value="Update Student">
		</form>
	</div>
	<%
	String message = (String) request.getAttribute("success");
	if (message != null) {
	%>
	<script type="text/javascript">
    alert("<%=message.equals("1") ? "Student data updated successfully!" : "Failed to update student data!"%>
		");
		window.location.href = "adminhome.jsp";
	</script>
	<%
	}
	%>

</body>
</html>
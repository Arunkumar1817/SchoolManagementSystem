<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.DAO.SaveAdminDAO"%>
<%@ page import="com.DTO.StudentDTO" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home Page</title>
<style>
body {
	background-color: #d0eaff;
	font-family: Arial, sans-serif;
}

h2 {
	text-align: center;
	color: #0077cc;
}

table {
	width: 80%;
	margin: 20px auto;
	border-collapse: collapse;
	background: #ffffff;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	border-radius: 8px;
	overflow: hidden;
}

th, td {
	padding: 12px;
	text-align: center;
	border-bottom: 1px solid #ddd;
}

th {
	background: #5bc0de; 
	color: white;
	font-size: 16px;
}

tr:nth-child(even) {
	background: #eaf6fb; 
}

tr:hover {
	background: #d4f1f9; 
}

td {
	font-size: 14px;
	color: #333;
}

th, td {
	border: 1px solid #ccc;
}

table th:last-child, table td:last-child {
	width: 100px;
}

#anchor, #btn {
	text-decoration: none;
	font-size: 15px;
	color: #0077cc;
	border: 1px solid #0077cc;
	border-radius: 4px;
	padding: 6px 10px;
	transition: background-color 0.3s, color 0.3s;
}

#anchor:hover, #btn:hover {
	background-color: #0077cc;
	color: white;
}

#all {
	display: flex;
	align-items: center;
	justify-content: space-around;
	margin: 20px auto;
	width: 50%;
}
</style>
</head>
<body>
	<div>
		<h2>Admin Home Page</h2>
		<table>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Physics</th>
				<th>Chemistry</th>
				<th>Maths</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<%
				List<StudentDTO> studentlist = SaveAdminDAO.findAllSTudent();
				for (StudentDTO s : studentlist) {
			%>
			<tr>
				<td><%=s.getId()%></td>
				<td><%=s.getName()%></td>
				<td><%=s.getPhysics()%></td>
				<td><%=s.getChemistry()%></td>
				<td><%=s.getMaths()%></td>
				<td><a href="editstudent.jsp?id=<%=s.getId()%>&name=<%=s.getName()%>&phy=<%=s.getPhysics()%>&chem=<%=s.getChemistry()%>&maths=<%=s.getMaths()%>" style="color: red;">Edit</a></td>
				<td><a href="deletestudent?id=<%=s.getId()%>" style="color: red;" onclick="return confirmDelete();">Delete</a></td>
			</tr>
			<% } %>
		</table>
		<div id="all">
			<a href="addstudent.jsp" id="btn">Add Student</a>
			<a href="index.jsp" id="anchor">Logout</a>
		</div>
	</div>

	<script type="text/javascript">
		function confirmDelete() {
			let confirmAction = confirm("You want to delete the data?");
			if (confirmAction) {
				alert("Student data deleted successfully");
			} else {
				alert("Student data not deleted");
			}
			return confirmAction;
		}
	</script>
</body>
</html>
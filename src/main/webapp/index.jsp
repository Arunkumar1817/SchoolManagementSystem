<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
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
            padding: 35px;
            background: white;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        a {
            display: inline-block;
            width: 100%;
            margin-bottom: 10px;
            padding: 10px;
            background-color: #007bff; 
            color: white;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #0056b3; 
        }
    </style>
</head>
<body>
    <div class="container">
    <h2>SCHOOL MANAGEMENT SYSTEM</h2>
        <a href="adminlogin.jsp">ADMIN</a>
        <a href="addstudent.jsp">STUDENT</a>
    </div>
</body>
</html>
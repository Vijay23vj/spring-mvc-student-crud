<%@ page isELIgnored="false" %>
<%@ page import="java.util.Arrays"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fetching Data</title>
</head>
<body>
<h1 align="center">List of Student Details</h1>
<h1 style="text-align: center;color: lightgreen">${success}</h1>
	<div align="center">
		<table border="1">
			<tr>
				<th>Name</th>
				<th>Mobile</th>
				<th>Gender</th>
				<th>Age</th>
				<th>Address</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="s" items="${std}">
				<tr>
					<td>${s.name}</td>
					<td>${s.phNumber}</td>
					<td>${s.gender}</td>
					<td>${s.age}</td>
					<td>${s.address}</td>
					<td><a href="editStudent?id=${s.id}"><button onclick="return confirm('Are you sure you want to edit this record?');">Edit</button></a></td>
					<td><a href="deleteStudent?id=${s.id}"><button onclick="return confirm('Are you sure you want to delete this record?');">Delete</button></a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
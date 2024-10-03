<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie Crud</title>
<style>
/* Styling for the body */
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

/* Styling for the container div */
div {
	background-color: #ffffff;
	padding: 70px;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	text-align: center;
}

/* Styling for the buttons to display vertically */
button {
	background-color: #4CAF50; /* Green background */
	color: white; /* White text */
	padding: 10px 20px; /* Some padding */
	margin: 10px 0; /* Space between buttons */
	border: none; /* Remove borders */
	border-radius: 5px; /* Rounded corners */
	cursor: pointer; /* Pointer cursor on hover */
	font-size: 16px;
	width: 200px; /* Make the buttons take full width */
	display: block; /* Ensure each button is a block element */
}

/* Button hover effect */
button:hover {
	background-color: #45a049; /* Darker green on hover */
}

/* Link styling (optional) */
a {
	text-decoration: none;
	display: block; /* Ensure links behave as block elements */
	width: 100%; /* Ensure links take full width */
}
</style>
</head>
<body>
	<h1 style="text-align: center; color: lightgreen;position: absolute; top: 50px;">${success}</h1>
	<div>
		<a href="student.jsp"><button>Add Record</button></a>
		 <a href="fetchStudent"><button>Fetch Record</button></a>
	</div>
</body>
</html>
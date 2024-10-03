<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

/* Styling for the form container */
div {
	background-color: #ffffff;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	width: 350px; /* Set width of the form */
	box-sizing: border-box; /* Ensure padding doesn't add to width */
}

/* Styling for form inputs */
input[type="text"], input[type="number"] {
	width: 100%; /* Make input fields take up the full width */
	padding: 10px;
	margin: 10px 0; /* Margin between fields */
	border: 1px solid #ccc;
	border-radius: 5px;
	box-sizing: border-box; /* Ensure padding doesn't affect width */
}

/* Styling for radio buttons */
input[type="radio"] {
	margin-right: 5px;
}

/* Gender radio button section styling */
label[for="male"], label[for="female"] {
	margin-right: 20px;
	/* Adds spacing between the two radio button labels */
}

/* Styling for the submit button */
button {
	background-color: #4CAF50; /* Green background */
	color: white; /* White text */
	padding: 10px;
	margin-top: 15px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 16px;
	width: 100%;
}

/* Button hover effect */
button:hover {
	background-color: #45a049; /* Darker green on hover */
}
</style>
</head>
<body>
<h1 style="text-align:center;position: absolute; top: 50px;">Update Student Details</h1>
	<div>
<form action="updateStudent" method="post">
<input type="hidden" name="id" value="${student.id}">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="${student.name}" required="required" placeholder="NAME">

    <label for="number">Mobile:</label>
    <input type="number" id="number" name="phNumber" value="${student.phNumber}" required="required" placeholder="PhNumber">

    <label for="age">Age:</label>
    <input type="number" id="age" name="age" value="${student.age}" required="required" placeholder="AGE">

    <label>Gender:</label>
    <input type="radio" id="male" name="gender" value="male" required="required">
    <label for="male">Male</label>

    <input type="radio" id="female" name="gender" value="female" required="required">
    <label for="female">Female</label><br>

    <label for="address">Address:</label>
    <input type="text" id="address" name="address" value="${student.address}" required="required" placeholder="ADDRESS">

    <button type="submit">Update</button>
</form>

	</div>
</body>
</html>
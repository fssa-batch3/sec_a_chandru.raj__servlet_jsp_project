<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hall Registration</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f0f0f0;
}

h1 {
	text-align: center;
	margin-top: 20px;
}

form {
	max-width: 400px;
	margin: 0 auto;
	background-color: #ffffff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
	display: block;
	margin-bottom: 5px;
}

input[type="text"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

input[type="submit"] {
	background-color: #3498db;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 3px;
	cursor: pointer;
}
</style>
</head>
<body>
	<h1>Hall Registration</h1>
	<%
	String e = (String) request.getParameter("ErrorMessage");
	if (e != null) {
	%>
	
	<span style="color: red;"><%=e%></span>
	<%
	}
	%>
	<form action="CreateHalls" method="post">
		<label for="hallName">Hall Name:</label> <input type="text"
			id="hallName" name="hallName" required><br> <label
			for="hallLocation">Hall Location:</label> <input type="text"
			id="hallLocation" name="hallLocation" required><br> <label
			for="mobileNumber">Mobile Number:</label> <input type="text"
			id="mobileNumber" name="mobileNumber" required><br> <label
			for="capacity">Capacity:</label> <input type="text" id="capacity"
			name="capacity" required><br> <label for="pricing">Price:</label>
		<input type="text" id="pricing" name="pricing" required><br>

		<label for="image1">Image URL 1:</label> <input type="url" id="image1"
			name="url" pattern="https?://.+"
			title="Please enter a valid image URL" required><br> <label
			for="image2">Image URL 2:</label> <input type="url" id="image2"
			name="url1" pattern="https?://.+"
			title="Please enter a valid image URL" required><br> <label
			for="image3">Image URL 3:</label> <input type="url" id="image3"
			name="url2" pattern="https?://.+"
			title="Please enter a valid image URL" required><br> <label
			for="image4">Image URL 4:</label> <input type="url" id="image4"
			name="url3" pattern="https?://.+"
			title="Please enter a valid image URL" required><br> <label
			for="image5">Image URL 5:</label> <input type="url" id="image5"
			name="url4" pattern="https?://.+"
			title="Please enter a valid image URL" required><br> <label
			for="image6">Image URL 6:</label> <input type="url" id="image6"
			name="url5" pattern="https?://.+"
			title="Please enter a valid image URL" required><br> <label
			for="image7">Image URL 7:</label> <input type="url" id="image7"
			name="url6" pattern="https?://.+"
			title="Please enter a valid image URL" required><br> <input
			type="submit" value="Register Hall">
	</form>
</body>
</html>
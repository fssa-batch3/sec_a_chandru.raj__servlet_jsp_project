<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.text.DateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	font-family: 'Nunito', sans-serif;
	background-color: #111; /* Dark background color */
	color: #fff; /* Light text color */
	margin: 0;
	padding: 0;
}

.container {
	max-width: 500px; /* Adjust the maximum width */
	margin: 10px auto;
	margin-left: auto; /* Move the container to the right side */
	padding: 10px 20px;
	background-color: #222; /* Dark container background color */
	border-radius: 8px;
	box-shadow: 0 1px 0 rgba(255, 255, 255, 0.03) inset;
}

h1 {
	text-align: center;
	margin: 0 0 30px 0;
}

form {
	display: flex;
	flex-direction: column;
	margin: 10px auto;
	max-width: 300px;
	padding: 10px 20px;
	background-color: #222; /* Dark form background color */
	border-radius: 8px;
	box-shadow: 0 1px 0 rgba(255, 255, 255, 0.03) inset;
}

label {
	font-weight: bold;
	margin-bottom: 8px;
	display: block;
	color: #fff; /* Light label text color */
}

input[type="text"], input[type="password"], input[type="date"], input[type="datetime"],
	input[type="email"], input[type="number"], input[type="search"], input[type="tel"],
	input[type="time"], input[type="url"], textarea, select {
	padding: 15px;
	margin-bottom: 10px;
	border: 1px solid #444; /* Darker border color */
	border-radius: 3px;
	font-size: 16px;
	background-color: #333; /* Dark input background color */
	color: #ccc; /* Light input text color */
}

input[type="radio"], input[type="checkbox"] {
	margin: 0 4px 8px 0;
}

select {
	padding: 6px;
	height: 32px;
	border-radius: 2px;
}

button {
	background-color: #4bc970;
	color: #fff;
	padding: 19px 39px 18px 39px;
	border: none;
	border-radius: 5px;
	font-size: 18px;
	text-align: center;
	cursor: pointer;
	margin-bottom: 10px;
	box-shadow: 0 -1px 0 rgba(255, 255, 255, 0.1) inset;
}

button:hover {
	background-color: #3ac162;
}
</style>
</head>
<body>
	<div class="container">
		<h1>User Registration</h1>
		<%
		String e = (String) request.getParameter("ErrorMessage");
		if (e != null) {
		%>
		<span style="color: red;"><%=e%></span>
		<%
		}
		%>
		<form action="RegisterServlet" method="post">
			<label for="name">Name:</label> <input type="text" id="name"
				name="name" required autofocus><br> <label
				for="phoneNumber">Phone Number:</label> <input type="tel" pattern="[0-9]{10}" minlength="10" maxlength="10"  
				id="phoneNumber" name="phoneNumber" required autofocus><br>

			<label for="email">Email:</label> <input type="email" id="email"
				name="email" required autofocus><br> <label
				for="password">Password:</label> <input type="password"
				id="password" name="password" required autofocus><br> <label
				for="userType">User Type:</label> <select id="userType"
				name="userType" required>
				<option value="Seller" name="seller">Seller</option>
				<option value="User" name="user">User</option>
			</select><br>

			<button type="submit">Register</button>
		</form>
	</div>
</body>
</html>
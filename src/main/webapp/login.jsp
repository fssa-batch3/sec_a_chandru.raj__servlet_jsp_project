<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

    <title>Login</title>
   <style>
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

  /* Style the body */
  body {
    font-family: Arial, Helvetica, sans-serif;
    background-color: #333; /* Dark background color */
    text-align: center;
    padding: 50px;
    color: #fff; /* Light text color */
  }

  /* Style the login container */
  form {
    background-color: #444; /* Dark container background color */
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.1);
    padding: 20px;
    max-width: 400px;
    margin: 0 auto;
  }

  /* Style the form title */
  h1 {
    font-size: 24px;
    margin-bottom: 20px;
    color: #fff; /* Light title color */
  }

  /* Style labels for inputs */
  label {
    display: block;
    text-align: left;
    margin-bottom: 5px;
    color: #fff; /* Light label text color */
  }

  /* Style the input fields */
  input[type="email"],
  input[type="password"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: #555; /* Dark input background color */
    color: #fff; /* Light input text color */
  }

  /* Style the submit button */
  button[type="submit"] {
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    font-size: 18px;
    cursor: pointer;
    transition: background-color 0.3s;
  }

  button[type="submit"]:hover {
    background-color: #0056b3;
  }
</style>

<title>Login</title>
</head>
<body>
	<h1>Login Page</h1>
	<%
		String e = (String) request.getParameter("ErrorMessage");
		if (e != null) {
		%>
		<span style="color: red;"><%=e%></span>
		<%
		}
		%>
	<form action="loginServelt" method="post">
		<label>Email: </label>
		<input type="email" name = "email"  required placeholder="Enter email">
		<br />
		<label>Password: </label>
	     <input type="password" name = "password"  required placeholder="Enter password">
		<br />
		<button type="submit" >Submit</button>
		
	</form>
	
</body>
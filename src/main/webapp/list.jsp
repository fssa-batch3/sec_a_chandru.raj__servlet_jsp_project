<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.fssa.project.model.Hall"%>
<!DOCTYPE html>
<html>
<head>
<title>List of Halls</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: black;
	margin: 0;
	padding: 0;
}

h1 {
	text-align: center;
	padding: 20px;
	background-color: goldenrod;
	color: #fff;
	margin: 0;
}

.card-container {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-around;
}

.card {
	width: 25%;
	margin: 10px;
	background-color: white;
	border: 1px solid #ddd;
	border-radius: 5px;
	padding: 10px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	text-align: center;
}

.card-header {
	background-color: goldenrod;
	color: #fff;
	padding: 10px;
	border-radius: 5px 5px 0 0;
}

.card-body {
	padding: 10px;
}

.btn {
	background-color: #4CAF50;
	color: white;
	padding: 5px 10px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	border-radius: 4px;
	cursor: pointer;
}
</style>
</head>
<body>
	<h1>List of Halls</h1>

	<div class="card-container">
		<%
		List<Hall> hallList = (List<Hall>) request.getAttribute("hallList");

		for (Hall hall : hallList) {
		%>
		<div class="card">
			<div class="card-header">
				<img src="<%=hall.getUrl()%>" alt="Image Alt Text" width=350px>
			</div>
			<div class="card-body">
				<h3>Name: <%=hall.getHallName()%></h3>
				<p>Location: <%=hall.getHallLocation()%></p>
				<p>Mobile Number: <%=hall.getMobileNumber()%></p>
				<a class="btn"
					href="<%=request.getContextPath()%>/HallDetailServlet?id=<%=hall.getHallId()%>">View Info</a>
			</div>
		</div>
		<%
		}
		%>
	</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="com.fssa.project.model.Hall"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}
                                     
h1 {
	text-align: center;
	padding: 20px;
	background-color: #007BFF;
	color: #fff;
	margin: 0;
}

.card {
	width: 80%;
	margin: 20px auto;
	background-color: #fff;
	border: 1px solid #ddd;
	border-radius: 5px;
	padding: 10px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.card-header {
	background-color: #007BFF;
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

	<%
	List<Hall> hallList = (List<Hall>) request.getAttribute("hallList");

	for (Hall hall : hallList) {
	%>
	<div class="card">
		<div class="card-header">
			<h2>
				ID:
				<%=hall.getHallId()%>
			</h2>
		</div>
		<div class="card-body">
			<h3>
				Name:
				<%=hall.getHallName()%>
			</h3>
			<p>
				Location:
				<%=hall.getHallLocation()%></p>
			<p>
				Mobile Number:
				<%=hall.getMobileNumber()%></p>
			<a class="btn" href="<%=request.getContextPath() %>/HallDetailServlet?id=<%=hall.getHallId()%>">More details</a>
		</div>
	</div>
	<%
	}
	%>
</body>
</html>
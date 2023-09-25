
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.fssa.project.model.Hall"%>
<%@ page import="com.fssa.project.model.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<%
Hall display = (Hall) request.getAttribute("Hall");
String userType = (String) session.getAttribute("userType"); 
String email = (String) session.getAttribute("loggedUser");
System.out.println(email);
System.out.println(display.getEmail());





%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<!-- <link rel="stylesheet" href="../assets/css/halls.css" /> -->
<link rel="stylesheet" href="./assets/css/style.css" />
<link rel="stylesheet" href="./assets/css/hall-detail.css" />
</head>
<body>
	<header>
		<nav>
			<div class="logo">
				<a href="#"> <img alt="image" src="./assets/images/Redefine.png" />
				</a>
			</div>

			<ul>
				<li><a href="../pages/about.html">About Us</a></li>
				<li><a href="../pages/userprofile.html">Profile</a></li>
			</ul>
		</nav>
	</header>
	<main>
		<section class="container">
			<div class="card">
				<div class="name" id="name"><%= display.getHallName()%></div>
				<img id="hall-img"
					src="<%=display.getUrl() %>"
					alt="image" />

			</div>
			<div class="address">
				<h2>Address</h2>
				<div class="add">
					<p id="location"><%=display.getHallLocation() %></p>
				</div>
				<div class="pricing">
					<h2>Pricing</h2>
					<p id="price"><%=display.getPricing() %></p>
				</div>
				<div class="pricing">
					<h2>Capacity</h2>
					<p id="price"><%=display.getCapacity() %></p>
				</div>
				<div class="btn">
				<%
if (userType.equals("Admin") && email.equals(display.getEmail())) {
%>

    <a href="UpdateHallServlet?id=<%= display.getHallId() %>">
        <button type="button" id="btnUpdate" class="btn5">Update</button>
    </a>
    <a href="DeleteHallServlet?id=<%= display.getHallId() %>">
        <button type="button" id="btnDelete" class="btn5">Delete</button>
    </a>
    
     <a href="ListBookingsByHallServlet?id=<%= display.getHallId() %>">
        <button type="button" id="btnDelete" class="btn5">List</button>
    </a>
<%
} else if (userType.equals("User") && (email == null || display.getEmail() == null || !email.equals(display.getEmail()))) {
%>
    <a href="HallDetailServlet1?id=<%= display.getHallId() %>">
        <button type="button" id="btnBookNow" class="btn5">Book Now</button>
    </a>
<%
}
%>




    </div>
			</div>
		</section>

		<section>
			<div class="grid-container">
				<div class="images">
					<img
						src="<%=display.getUrl1() %>"
						alt="image" id="img1" />
				</div>
				<div class="images">
					<img
						src="<%=display.getUrl2() %>"
						alt="image" id="img2" />
				</div>
				<div class="images">
					<img
						src=<%=display.getUrl3() %>
						alt="image" id="img3" />
				</div>
				<div class="images">
					<img
						src=<%=display.getUrl4() %>
						alt="image" id="img4" />
				</div>
				<div class="images">
					<img
						src=<%=display.getUrl5() %>
						alt="image" id="img5" />
				</div>
				<div class="images">
					<img
						src=<%=display.getUrl6() %>
						alt="image" id="img6" />
				</div>
			</div>
			
		</section>
		
		
	</main>
	</body>
	</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.fssa.project.model.Hall"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<%
Hall display = (Hall) request.getAttribute("Hall");
String errorMessage = request.getParameter("errorMessage");

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Mall</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        header {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 1rem;
        }

        main {
            padding: 2rem;
        }

        .container {
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 1rem;
            display: flex;
            justify-content: space-between;
        }

        .mall-details {
            flex: 1;
        }

        .mall-details h1 {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .mall-details p {
            font-size: 16px;
        }

        .booking-form {
            flex: 1;
            background-color: #f9f9f9;
            padding: 1rem;
            border-radius: 5px;
        }

        .booking-form h2 {
            font-size: 20px;
            margin-bottom: 10px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            font-weight: bold;
            margin-bottom: 5px;
        }

        input[type="date"],
        input[type="time"] {
            margin-bottom: 10px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .btn-book-now {
            background-color: #333;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn-book-now:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
    <header>
       
    </header>
  <main>
        <section class="container">
            <div class="mall-details">
                <h1>Mall Name: <%=display.getHallName() %></h1>
                <p>Location:  <%=display.getHallLocation() %></p>
                <p>Capacity: <%=display.getCapacity() %></p>
                <p>Pricing: <%=display.getPricing() %></p>
            </div>
            <div class="booking-form">
                <h2>Book Mall</h2>
               <% if (errorMessage != null) { %>
                    <script>
                        alert("<%= errorMessage %>");
                    </script>
                <% } %>
                <form action="CreateBookingServlet" method="post">
                    <label for="date">Select Date:</label>
                    <input type="date" id="date" name="bookingDate" required>
                    
                    <label for="time">Select Time:</label>
                    <input type="time" id="time" name="bookingTime" required>
                    
                  <input type="hidden" name="hallId" value="<%=display.getHallId()%>">

                    <button type="submit" class="btn-book-now">Book Now</button>
                </form>
            </div>
        </section>
    </main>
    <footer>

    </footer>
</body>
</html>

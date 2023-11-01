<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.fssa.project.model.Booking"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<style>
    table {
        width: 100%;
        border-collapse: collapse;
        background-color: black;
        color: goldenrod;
    }

    th, td {
        padding: 10px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    th {
        background-color: #333; /* Dark gray background for headers */
        font-weight: bold;
    }

    tr:hover {
        background-color: #444; /* Slightly darker gray for hover effect */
    }
</style>
<html lang="en">
<head>
    <!-- Your head section here -->
</head>
<body>
    <!-- Your header and other HTML content here -->
    
    <main>
        <section class="container">
            <!-- Display list of bookings -->
            <h2>List of Bookings</h2>
            <table>
                <tr>
                    <th>ID</th>
                    <th>User Email</th> <!-- Update column header -->
                    <th>Hall ID</th>
                    <th>Booking Date</th>
                </tr>
              <c:forEach var="booking" items="${bookings}">
    <tr>
        <td>${booking.id}</td>
        <td>${booking.userEmail}</td>
        <td>${booking.hallId}</td>
        <td>${booking.bookingDate}</td>
    </tr>
</c:forEach>

            </table>
        </section>
    </main>
    
    <!-- Your footer and other HTML content here -->
</body>
</html>

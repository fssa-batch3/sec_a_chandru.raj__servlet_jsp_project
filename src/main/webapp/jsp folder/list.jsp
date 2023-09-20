<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.fssa.project.model.Hall" %>
<!DOCTYPE html>
<html>
<head>
    <title>List of Halls</title>
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
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #007BFF;
            color: #fff;
        }
        tr:hover {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1>List of Halls</h1>
    
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Location</th>
                <th>Mobile Number</th>
                <!-- Add more table headers as needed -->
            </tr>
        </thead>
        <tbody>
            <% List<Hall> hallList = (List<Hall>) request.getAttribute("hallList");
            if (hallList != null) {
                for (Hall hall : hallList) {%>
        
                <tr>
                    <td><%= hall.getHallId() %></td>
                    <td><%= hall.getHallName() %></td>
                    <td><%= hall.getHallLocation() %></td>
                    <td><%= hall.getMobileNumber() %></td>
                    <!-- Add more table data columns as needed -->
                </tr>
                <%
                }
            }
            %>
        </tbody>
    </table>
</body>
</html>

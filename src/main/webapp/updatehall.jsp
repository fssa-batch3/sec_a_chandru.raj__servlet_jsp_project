<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.util.List"%>  
 <%@ page import="com.fssa.project.model.Hall"%>
 <% 
 Hall list = (Hall)request.getAttribute("updatehall");
 String email1 = (String) session.getAttribute("loggedUser");
 %>
 
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
    <h1>Hall Upadte / Delete</h1>
    <form action="UpdateHallServlet" method="post">
        <label for="hallName">Hall Name:</label>
        <input type="text" id="hallName" name="hallName" value="<%=list.getHallName()%>" required><br>

        <label for="hallLocation">Hall Location:</label>
        <input type="text" id="hallLocation" name="hallLocation" value=<%= list.getHallLocation() %> required><br>

        <label for="mobileNumber">Mobile Number:</label>
        <input type="text" id="mobileNumber" name="mobileNumber" value=<%= list.getMobileNumber() %> required><br>
        
         <label for="capacity">Capacity:</label>
        <input type="text" id="capacity" name="capacity" value=<%= list.getCapacity() %> required><br>
        
         <label for="pricing">Price:</label>
        <input type="text" id="pricing" name="pricing" value=<%= list.getPricing() %> required><br>
        
        <label for="image1">Image URL 1:</label>
        <input type="url" id="image1" name="url" value=<%= list.getUrl() %> pattern="https?://.+" title="Please enter a valid image URL"><br>

        <label for="image2">Image URL 2:</label>
        <input type="url" id="image2" name="url1" value=<%= list.getUrl1() %> pattern="https?://.+" title="Please enter a valid image URL"><br>

        <label for="image3">Image URL 3:</label>
        <input type="url" id="image3" name="url2" value=<%= list.getUrl2() %> pattern="https?://.+" title="Please enter a valid image URL"><br>

        <label for="image4">Image URL 4:</label>
        <input type="url" id="image4" name="url3" value=<%= list.getUrl3() %> pattern="https?://.+" title="Please enter a valid image URL"><br>

        <label for="image5">Image URL 5:</label>
        <input type="url" id="image5" name="url4" value=<%= list.getUrl4() %> pattern="https?://.+" title="Please enter a valid image URL"><br>

        <label for="image6">Image URL 6:</label>
        <input type="url" id="image6" name="url5" value=<%= list.getUrl5() %> pattern="https?://.+" title="Please enter a valid image URL"><br>

        <label for="image7">Image URL 7:</label>
        <input type="url" id="image7" name="url6" value=<%= list.getUrl6() %> pattern="https?://.+" title="Please enter a valid image URL"><br>
        
        <input type="hidden" id="id" name="id" value=<%= list.getHallId() %> ><br>
        <input type="text" id="email" name="email" value="<%= session.getAttribute("loggedUser") %>"><br>

        
         <button>Update Hall Details</button>
        
    </form>
</body>
</html>
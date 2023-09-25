<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.fssa.project.model.Hall"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<%
Hall display = (Hall) request.getAttribute("Hall");

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Page</title>
    <style>
    
    /* Reset some default browser styles */
body, h1, h2, h3, p, label, input, button {
    margin: 0;
    padding: 0;
}

body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
}

header {
    background-color: #333;
    color: #fff;
    text-align: center;
    padding: 1rem;
}

.container {
    max-width: 600px;
    margin: 0 auto;
    padding: 2rem;
    background-color: #fff;
    border: 1px solid #ccc;
    border-radius: 5px;
}

h2 {
    font-size: 24px;
    margin-bottom: 20px;
}

form {
    display: flex;
    flex-direction: column;
}

label {
    font-weight: bold;
    margin-bottom: 5px;
}

input[type="text"] {
    margin-bottom: 15px;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

input[type="text"][name="expiryDate"] {
    width: 50px;
}

input[type="text"][name="cvv"] {
    width: 70px;
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
        <!-- Header content for the payment page, if needed -->
    </header>
    <main>
        <section class="container">
            <h2>Payment Information</h2>
            <form >
                <label for="cardNumber">Card Number:</label>
                <input type="text" id="cardNumber" name="cardNumber" required>

                <label for="expiryDate">Expiry Date:</label>
                <input type="text" id="expiryDate" name="expiryDate" placeholder="MM/YY" required>

                <label for="cvv">CVV:</label>
                <input type="text" id="cvv" name="cvv" required>
                
                
                <label for="price">Price:</label>
                <input type="text" id="price"  name="price" required>


                <button type="submit" class="btn-book-now">Pay Now</button>
            </form>
               <c:if test="${not empty param.payNow}">
                <div style="color: green; font-weight: bold;">Successfully Paid!</div>
            </c:if>
        </section>
    </main>
    <footer>
       
    </footer>
</body>
</html>

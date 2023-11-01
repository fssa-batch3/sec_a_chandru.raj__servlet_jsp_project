package com.fssa.redefine;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeParseException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.project.exception.ServiceException;
import com.fssa.project.exception.ValidationException;
import com.fssa.project.model.User;
import com.fssa.project.service.UserService;
/**
 * Servlet implementation class GetAllBookServlet
 */
@WebServlet("/RegisterServlet")

public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
        String name = request.getParameter("name");
        
        String phoneNumber = request.getParameter("phoneNumber");
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String type = request.getParameter("userType");
        int setType = 0;
        if (type.equals("User")) {
            setType = 0;
        } else if (type.equals("Seller")) {
            setType = 1;
        }
        System.out.print(type);

        

        try {
            // Convert dateOfBirthStr to LocalDate if needed
             // Example format: "yyyy-MM-dd"
            
            User user = new User(name, phoneNumber, email, password, setType);
            UserService userService = new UserService();
            try {
				userService.createUser(user);
				response.getWriter().write("User registration successful!");
				response.sendRedirect("login.html");
			} catch (ServiceException e) {
			//	response.sendRedirect(request.getContextPath() + "/signup.jsp?ErrorMessage=" + e.getMessage());
				//e.getMessage();
				
				String msg = e.getMessage();
				//String[] error = msg.split(":");
//				request.setAttribute("email", email);
//				request.setAttribute("name", name);
//				request.setAttribute("password",password);
//				request.setAttribute("phoneNumber", phoneNumber);
//				request.setAttribute("type", type);
				
				RequestDispatcher patcher = request.getRequestDispatcher("/signup.jsp?ErrorMessage=" + msg);
				patcher.forward(request, response);
			}
            
            
            
        } catch (DateTimeParseException e) {
            response.getWriter().write("Invalid date format for date of birth.");
        }
    }

}

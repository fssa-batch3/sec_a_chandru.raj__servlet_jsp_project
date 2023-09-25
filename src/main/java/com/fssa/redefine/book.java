package com.fssa.redefine;

import com.fssa.project.exception.ServiceException;
import com.fssa.project.model.Hall;
import com.fssa.project.service.HallService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/HallDetailServlet1")
public class book extends HttpServlet {
    private static final long serialVersionUID = 1L;
                
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Get the hall ID from the request parameter
            long hallId = Long.parseLong(request.getParameter("id"));
            
            System.out.println(hallId);
                              
            // Retrieve the hall details by ID from the service
            HallService hallService = new HallService();
            Hall hall = hallService.getHallByIdLong(hallId);
            System.out.println(hall.getHallId());

            // Set the hall object as a request attribute
            

            // Forward to the hall detail view (assuming you have a "detail.jsp" page)
            RequestDispatcher dispatcher = request.getRequestDispatcher("/book.jsp");
            System.out.println("view");
            request.setAttribute("Hall", hall);
            System.out.println("hall");
            dispatcher.forward(request, response);
            
        } catch (NumberFormatException e) {
        	e.printStackTrace();
            // Handle invalid ID format
            request.setAttribute("errorMessage", "Invalid hall ID format");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/error.jsp");
            dispatcher.forward(request, response);
        } catch (ServiceException e) {
            // Handle service exceptions
        	e.printStackTrace();
            request.setAttribute("errorMessage", e.getMessage());
            System.out.println("service exception");
            System.out.println(e.getMessage());
			/*
			 * RequestDispatcher dispatcher = request.getRequestDispatcher("/error.jsp");
			 * dispatcher.forward(request, response);
			 */
        }
    }
             
   
}

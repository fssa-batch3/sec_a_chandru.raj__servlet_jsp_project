package com.fssa.redefine;

import com.fssa.project.dao.BookingDAO;
import com.fssa.project.exception.DAOException;
import com.fssa.project.model.Booking;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet("/ListBookingsByHallServlet")

public class ListBookingsServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    try {
	        // Retrieve the booking ID from the request parameter
	        int bookingId = Integer.parseInt(request.getParameter("id"));

	        // Retrieve the specific booking by ID
	        List<Booking> bookings = BookingDAO.getBookingsByMallId(bookingId);

	        // Set the bookings as a request attribute
	        request.setAttribute("bookings", bookings);

	        // Forward the request to a JSP page for rendering booking details
	        request.getRequestDispatcher("listBookings.jsp").forward(request, response);
	    } catch (NumberFormatException | DAOException e) {
	        e.printStackTrace();
	        // Handle any exceptions or errors
	        response.sendRedirect("error.jsp");
	    }
	}

}


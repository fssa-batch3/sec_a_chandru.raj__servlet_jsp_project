package com.fssa.project.servlet;

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
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

@WebServlet("/CreateBookingServlet")
public class CreateBookingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Retrieve the userId from the session
            HttpSession session = request.getSession();
            String userId = (String) session.getAttribute("loggedUser");

            // Check if userId is not null and is a valid integer
            if (userId == null) {
                response.sendRedirect("error2.jsp");
                return;
            }

            // Retrieve other booking details from the request parameters
            int hallId;
            String dateString = request.getParameter("bookingDate");

            try {
                hallId = Integer.parseInt(request.getParameter("hallId"));
            } catch (NumberFormatException e) {
                response.sendRedirect("error1.jsp");
                return;
            }

            // Convert the date string to a java.sql.Date object
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date utilDate;

            try {
                utilDate = dateFormat.parse(dateString);
            } catch (ParseException e) {
                response.sendRedirect("error1.jsp");
                return;
            }

            Date bookingDate = new Date(utilDate.getTime());

            // Check if a booking already exists for the specified date and hall
            if (BookingDAO.isBookingDateOccupied(bookingDate, hallId)) {
            	 String errorMessage = "The date is already booked by someone.";
            	

                 response.sendRedirect(request.getContextPath()+"error9.jsp" + hallId );
                 return;
            }

            // Create a Booking object with the retrieved details
            Booking booking = new Booking(userId, hallId, bookingDate);

            // Call the DAO method to create the booking
            boolean bookingCreated = BookingDAO.createBooking(booking);

            if (bookingCreated) {
                response.sendRedirect("payment.jsp");
            } else {
                response.sendRedirect("error1.jsp");
            }
        } catch (DAOException e) {
            e.printStackTrace();
            response.sendRedirect("error3.jsp");
        }
    }
}

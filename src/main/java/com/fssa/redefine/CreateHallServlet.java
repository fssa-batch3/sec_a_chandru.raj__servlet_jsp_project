package com.fssa.redefine;


import com.fssa.project.exception.ServiceException;
import com.fssa.project.exception.ValidationException;
import com.fssa.project.model.Hall;
import com.fssa.project.service.HallService;
import com.fssa.project.validation.HallValidator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;

/**
 * Servlet implementation class CreateHallServlet
 */
@WebServlet("/CreateHalls")

public class CreateHallServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 9074599903193092296L;

	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String hallName = request.getParameter("hallName");
        String hallLocation = request.getParameter("hallLocation");
        String mobileNumber = request.getParameter("mobileNumber");
    
        
        // Validate hall data
		HallValidator.validateHall(hallName);
		HallValidator.validateHallLocation(hallLocation);
		HallValidator.validateMobileNumber(mobileNumber);
         
		// Convert request parameters to Hall object
		Hall hall = new Hall(hallName, hallLocation, mobileNumber);

		// Store hall data
		HallService hallService = new HallService();
		try {
			hallService.createHall(hall);
             response.sendRedirect("home.jsp");		
		} catch (ServiceException e) {
			e.printStackTrace();
		}
    }
}

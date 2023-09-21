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
        String capacity = request.getParameter("capacity");
        String pricing = request.getParameter("pricing");
        String url = request.getParameter("url");
        String url1 = request.getParameter("url1");
        
        String url2 = request.getParameter("url2");
        String url3 = request.getParameter("url3");
        String url4 = request.getParameter("url4");
        String url5 = request.getParameter("url5");
        String url6 = request.getParameter("url6");
        System.out.print(url2);
        
        // Validate hall data
		HallValidator.isValidHallName(hallName);
		HallValidator.isValidLocation(hallLocation);
		HallValidator.isValidMobileNumber(mobileNumber);
		HallValidator.isValidImageURL(url);
		HallValidator.isValidCapacity(capacity);
		HallValidator.isValidPricing(pricing);
		
		
		
		// Convert request parameters to Hall object
		Hall hall = new Hall(hallName, hallLocation, mobileNumber,capacity, pricing,url, url1, url2,url3, url4, url5, url6);
        System.out.print(hall.toString());

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

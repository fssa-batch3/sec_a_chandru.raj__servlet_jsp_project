package com.fssa.redefine;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.project.exception.ServiceException;
import com.fssa.project.model.Hall;
import com.fssa.project.service.HallService;

/**
 * Servlet implementation class DeleteHallServlet
 */
@WebServlet("/DeleteHallServlet")
public class DeleteHallServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Retrieve the product ID from the request parameter
		String hallId = request.getParameter("id");
		System.out.print(hallId);
		PrintWriter out = response.getWriter();

		int hall_id = Integer.parseInt(hallId);


		try {


			HallService hallService = new HallService();

			try {
				hallService.deleteHall(hall_id);
				response.sendRedirect("listHallsServlet");
			} catch (ServiceException e) {
				e.printStackTrace(); 
			}

		} catch (Exception e) {
			e.printStackTrace();
			out.println("Error: " + e.getMessage());
		}
	}
}

package com.fssa.redefine;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.project.model.Hall;
import com.fssa.project.service.HallService;
import com.fssa.project.service.HallService;
import com.fssa.project.dao.HallDAO;
import com.fssa.project.exception.ServiceException;

@WebServlet("/listHallsServlet")
public class ListHallsServlet extends HttpServlet {
    private HallService hallService;

    @Override
    public void init() throws ServletException {
        super.init();
        hallService = new HallService();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Retrieve the list of halls from the database using the HallService
            List<Hall> hallList = hallService.getAllHalls();

            // Set the list of halls as an attribute in the request
            request.setAttribute("hallList", hallList);
            
            System.out.println("list1");

            // Forward the request to the JSP page for rendering
            request.getRequestDispatcher("/list.jsp").forward(request, response);
            
        } catch (ServiceException e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().write("Failed to retrieve halls: " + e.getMessage());
        }
    }
}

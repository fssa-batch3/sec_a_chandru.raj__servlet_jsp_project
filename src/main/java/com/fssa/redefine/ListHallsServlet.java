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
    private HallService taskService;

    @Override
    public void init() throws ServletException {
        super.init();
        HallDAO hallDAO = new HallDAO();
        HallService hallservice= new HallService();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Retrieve the list of tasks from the database using the TaskService or TaskDAO
            List<Hall> hallList = HallService.getAllHalls(); // Replace with the appropriate method

            // Set the list of tasks as an attribute in the request
            request.setAttribute("hallList", hallList);

            // Forward the request to the JSP page for rendering
            request.getRequestDispatcher("/list.jsp").forward(request, response);
        } catch (ServiceException e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().write("Failed to retrieve halls: " + e.getMessage());
        }
    }
}
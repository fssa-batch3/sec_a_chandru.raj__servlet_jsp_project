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

@WebServlet("/UpdateHallServlet")
public class UpdateHallServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int hallId = Integer.parseInt(request.getParameter("id"));
        RequestDispatcher dispatcher = null;

        try {
            Hall hall = new HallService().getHallByIdLong(hallId);

            request.setAttribute("updatehall", hall);

            dispatcher = request.getRequestDispatcher("updatehall.jsp");

        } catch (ServiceException e) {
            dispatcher = request.getRequestDispatcher("getAllHallList.jsp?error=Cannot update now, please try again later");
        }

        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int hallId = Integer.parseInt(request.getParameter("id"));
        String hallName = request.getParameter("hallName");
        String hallLocation = request.getParameter("hallLocation");
        String pricing = request.getParameter("pricing");
        String capacity = request.getParameter("capacity");
        
        String url = request.getParameter("url");
        String url1 = request.getParameter("url1");
        
        String url2 = request.getParameter("url2");
        String url3 = request.getParameter("url3");
        String url4 = request.getParameter("url4");
        String url5 = request.getParameter("url5");
        String url6 = request.getParameter("url6");
        
        Hall updatedHall = new Hall(hallId, hallName, hallLocation, pricing, capacity, url, url1, url2, url3, url4, url, url5, url6);

        RequestDispatcher dispatcher = null;

        try {
            HallService hallService = new HallService();

            hallService.updateHall(updatedHall);

            dispatcher = request.getRequestDispatcher("getAllHallList.jsp");

        } catch (ServiceException e) {
            dispatcher = request.getRequestDispatcher("updateHall.jsp?error=" + e.getMessage());
            request.setAttribute("updateHall", updatedHall);
        }

        dispatcher.forward(request, response);
    }
}

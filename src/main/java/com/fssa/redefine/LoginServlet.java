package com.fssa.redefine;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.project.exception.ServiceException;
import com.fssa.project.model.User;
import com.fssa.project.service.UserService;

@WebServlet("/loginServelt")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		UserService userService = new UserService();

		User user = new User();
		user.setEmail(email);
		user.setPassword(password);

		try {

			if (userService.loginUser(user)) {

				RequestDispatcher patcher = request.getRequestDispatcher("home.jsp");
				HttpSession session = request.getSession();
   
				session.setAttribute("loggedUser", email);

				patcher.forward(request, response);

			}else {
				response.getWriter().print("Invalid email or password");
			}
			

		} catch (ServiceException e) {
			e.printStackTrace();
		}

	}
}

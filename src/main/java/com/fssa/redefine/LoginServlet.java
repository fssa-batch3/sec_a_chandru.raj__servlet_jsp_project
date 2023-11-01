package com.fssa.redefine;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.project.dao.UserDAO;
import com.fssa.project.exception.DAOException;
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

				HttpSession session = request.getSession();

				session.setAttribute("loggedUser", email);
				session.setAttribute("loggedUser1", user.getUserId());
				session.setAttribute("user", user);
				session.setAttribute("userId", user.getUserId());
				System.out.println(user.getUserId());
				try {
					int type = UserDAO.findTypeByEmail(email);

					if (type == 1) {
						session.setAttribute("userType", "Admin");
						response.sendRedirect(request.getContextPath() + "/home.jsp");
					} else if (type == 0) {
						session.setAttribute("userType", "User");
						response.sendRedirect("userhome.jsp");
					}
				} catch (DAOException e) {
					response.sendRedirect(request.getContextPath() + "/login.jsp?ErrorMessage=" + e.getMessage());
				}
			} else {
				response.sendRedirect(request.getContextPath() + "/login.jsp?ErrorMessage=invalid login credentials");
			}

		} catch (ServiceException e) {
			response.sendRedirect(request.getContextPath() + "/login.jsp?ErrorMessage=" + e.getMessage());
		}

	}
}

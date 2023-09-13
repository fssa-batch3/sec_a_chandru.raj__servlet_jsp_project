package com.fssa.redefine;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.fssa.project.model.Movie;


/**
 * Servlet implementation class GetAllAccounts
 */
@WebServlet("/GetAllAccountJSONServlet")
public class GetAllMovieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		List<Movie> movies = new ArrayList<Movie> ();
		LocalDateTime dateTime = LocalDateTime.now();
		
		movies.add(new Movie(1,"Leo","Action", dateTime));
		movies.add(new Movie(2,"Miller","Action",dateTime));
		movies.add(new Movie(3,"LGM","Love",dateTime));
		
		String movieName = request.getParameter("movieName");
		 List<Movie> matchedMovies = new ArrayList<>();
		  for (Movie movie : movies) {
	            if (movieName.equals(movie.getName())) {
	            	matchedMovies.add(movie);
	                break;
	            }
	        }
		JSONArray arr = new JSONArray(matchedMovies);
		out.print(arr.toString());
		
	}

}

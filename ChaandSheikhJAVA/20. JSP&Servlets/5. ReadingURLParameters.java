package org.ey.ServletsTuts;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ParametetServlet
 */
@WebServlet("/ParametetServlet")
public class ParametetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ParametetServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/**
		 * response.getWriter() returns an object of PrintWriter.
		 * 
		 * To fetch the parameters from the webpage we use request object and type in the name of
		 * parameters in getParameter.
		 * 
		 * For example := Let us say we want our parameters to be x and y
		 * then we use request.getParameter("x") and request.getParameter("y").
		 * 
		 * This method returns a String and for converting it into an Integer we need to parse it
		 * using Integer.parseInt() method.
		 * 
		 * (Note that by default the value of x and y would be null, so we would get a error message on the webpage.)
		 */
		
		
		/**
		 * HOW TO GIVE THE VALUES OF x AND y ?
		 * 
		 * Let us say we want x=5 and y=95, then in the URL section of the webpage append the following String
		 * "x=5&y=95"
		 */
		PrintWriter out = response.getWriter();
		Integer x = Integer.parseInt(request.getParameter("x"));
		Integer y = Integer.parseInt(request.getParameter("y"));
		
		Integer sum = x + y;
		out.print("The value of x + y is " + sum);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

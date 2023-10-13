package org.ey;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class submit
 */
@WebServlet("/submit")
public class submit extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public submit() {}

	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String country = request.getParameter("country");
		
		String[] langs = request.getParameterValues("language");
		
		out.print("Name : " + name + "<br/>");
		out.print("Gender : " + gender + "<br/>");
		out.print("Language : ");
		
		if(langs != null) {
			for(int i = 0;i<langs.length;i++) {
				out.println(langs[i] + " ");
			}
		}else {
			out.println("No language");
		}
		
		out.print("<br/>");
		
		out.print("Country : " + country);
	}

	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}

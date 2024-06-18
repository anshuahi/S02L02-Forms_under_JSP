package org.anshuahi;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControllerClass
 */
public class ControllerClass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerClass() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().println(request.getParameter("name") + "<br/>");
		response.getWriter().println(request.getParameter("gender") + "<br/>");
		
		PrintWriter out = response.getWriter();
		String[] lang = request.getParameterValues("language");
		if(lang != null) {
			int n = lang.length;
			String l = "";
			for(int i = 0; i < n-1; i++) {
				l += lang[i]+", ";
			}
			l += lang[n-1];
			out.println(l);
		}
		else {
			out.print("None selected");
		}
		response.getWriter().println("<br/>" + request.getParameter("country") + "<br/>");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().println(request.getParameter("name") + "<br/>");
		response.getWriter().println(request.getParameter("gender") + "<br/>");
		
		PrintWriter out = response.getWriter();
		String[] lang = request.getParameterValues("language");
		if(lang != null) {
			int n = lang.length;
			String l = "";
			for(int i = 0; i < n-1; i++) {
				l += lang[i]+", ";
			}
			l += lang[n-1];
			out.println(l);
		}
		else {
			out.print("None selected");
		}
		response.getWriter().println("<br/>" + request.getParameter("country") + "<br/>");
//		doGet(request, response);
	}

}

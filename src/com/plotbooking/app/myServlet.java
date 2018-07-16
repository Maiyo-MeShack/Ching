package com.plotbooking.app;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class myServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
    public myServlet() {
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		{
			response.setContentType("text/plain"); 
			PrintWriter out = response.getWriter(); 
			Enumeration<?> names = request.getHeaderNames();
			while(names.hasMoreElements()) { 
				String name = (String)names.nextElement(); 
				String val = request.getHeader(name); 
				if( val != null ) { 
					out.println(name+":"+val ); 
				     }
			     }
			}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}

package com.data.projectX;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Login() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		   ActorsDAO ad=new ActorsDAOImplement();
		   
		   String userName=request.getParameter("username");
		   String Name=request.getParameter("Name");
		   String password=request.getParameter("password1");
		   
		   
		   Actors ac=ad.getActors(userName, password);
		   System.out.println(userName+" " + Name+" "+ password);
		   
		   if(ac!=null && ac.getName()!=null) {
			   request.setAttribute("message",ac.getName());
			   request.getRequestDispatcher("welcome.jsp").forward(request, response);
		   }else{
			   ac.setName(request.getParameter("name"));
			   ac.setPassword(password);
			   ac.setUserName(userName);
			   ad.insertActors(ac);
			   request.setAttribute("successMessage", "Registration successful,please login");
			   request.getRequestDispatcher("login.jsp").forward(request, response);
		   }//else {
			   //request.setAttribute("message", "No Data,Register");
			   //request.getRequestDispatcher("login.jsp").forward(request, response);
		   //}
	 }

}

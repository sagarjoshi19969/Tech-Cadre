package com.niit.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.DaoImple.UserImple;


@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public RegistrationServlet() {
        super();
 
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String email = request.getParameter("email");
		String userNmae=request.getParameter("username");
		String password = request.getParameter("password");
		
		UserImple obj=new UserImple();
		if(obj.addUser(userNmae, email, password)==1) {
			out.println("<script>alert('Registration Successfull')</script>");
			response.setHeader("Refresh", "1;login.html");
			
		}
		else {
			out.println("<script>alert('Registration Failed !! Try Again')</script>");
			response.setHeader("Refresh", "1;login.html");
		}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

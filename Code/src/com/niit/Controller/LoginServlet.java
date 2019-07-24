package com.niit.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.niit.DaoImple.UserImple;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String userName=request.getParameter("username");
		String password = request.getParameter("password");
		
		HttpSession session=request.getSession();
		PrintWriter out = response.getWriter();
		
		UserImple obj=new UserImple();
		if(obj.verifyUser(userName, password)) {
			
			session.setAttribute("username", userName);
			
			response.sendRedirect("UserDashBoard.jsp");
			}
		else {
			out.println("<script>alert('Login Failed !! Try Again')</script>");
			response.setHeader("Refresh", "1;login.html");
		}
	
		
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

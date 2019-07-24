package com.niit.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.niit.Bean.Education;

import com.niit.DaoImple.UserService;
import com.niit.DbConnection.DataBaseController;


@WebServlet("/AddEducationDeatils")
public class AddEducationDeatils extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public AddEducationDeatils() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		HttpSession session=request.getSession();
		String UserId=(String) session.getAttribute("username");
		String csname=request.getParameter("C-S-NAME");
		String degree=request.getParameter("DEGREE");
		String Sub_Comb=request.getParameter("SUBJECT");
		String POY=request.getParameter("YEAR");
		String Percent=request.getParameter("PERCENTAGE");
		
		UserService us=new UserService();
	
		int value=us.AddEducation(UserId, csname, degree, Sub_Comb, POY, Percent);
		
		
		if(value==1) {
		response.sendRedirect("ExperienceDetails.jsp");
		}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

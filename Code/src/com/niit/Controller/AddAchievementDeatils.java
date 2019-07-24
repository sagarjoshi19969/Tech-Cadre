package com.niit.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.niit.Bean.Achievements;

import com.niit.DaoImple.UserService;
import com.niit.DbConnection.DataBaseController;


@WebServlet("/AddAchievementDeatils")
public class AddAchievementDeatils extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AddAchievementDeatils() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		
		response.setContentType("text/html");
		String UserId=(String) session.getAttribute("username");
		String AwardNAME=request.getParameter("AwardNAME");
		String Company=request.getParameter("Company");
		String DATE=request.getParameter("DATE");
		
		UserService us=new UserService();
	
		int value=us.AddAchievements(UserId, AwardNAME, Company, DATE);
		
		if(value==1) {response.sendRedirect("Project.jsp");}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package com.niit.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.niit.Bean.Projects;
import com.niit.DaoImple.UserService;
import com.niit.DbConnection.DataBaseController;


@WebServlet("/AddProjectsDeatils")
public class AddProjectsDeatils extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AddProjectsDeatils() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		
		response.setContentType("text/html");
		String UserId=(String) session.getAttribute("username");
		String project=request.getParameter("project");
		String FrontEnd=request.getParameter("FrontEnd");
		String BackEnd=request.getParameter("BackEnd");
		String Skills=request.getParameter("Skill");
		String Description=request.getParameter("Description");
		UserService us=new UserService();
		
		
		int value=us.AddProjects(UserId, project, FrontEnd, BackEnd, Description, Skills);
		
		
		if(value==1) {
		response.sendRedirect("ChooseTemplate.jsp");}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

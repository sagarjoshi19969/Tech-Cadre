package com.niit.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.niit.Bean.Personal;
import com.niit.DaoImple.UserService;
import com.niit.DbConnection.DataBaseController;


@WebServlet("/AddPersonalDeatils")
public class AddPersonalDeatils extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AddPersonalDeatils() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session=request.getSession();
	
		response.setContentType("text/html");
		String FirstName=request.getParameter("Full Name");
		String LastName=request.getParameter("Last Name");
		String FatherName=request.getParameter("Father Name");
		String MotherName=request.getParameter("Mother Name");
		String dob=request.getParameter("D-O-B");
		String age=request.getParameter("Age");
		String Gender=request.getParameter("Gender");
		String PhoneNumber=request.getParameter("Phone Number");
		String Mail=request.getParameter("Mail");
		String Address=request.getParameter("Address");
		String CAREER_OBJECTIVES=request.getParameter("CAREER_OBJECTIVES");
		String STRENGTHS=request.getParameter("STRENGTHS");
		String HOBBIES=request.getParameter("HOBBIES");
		String Languages=request.getParameter("Languages");
		String UserId=(String) session.getAttribute("username");
		
		
		UserService us=new UserService();
		ArrayList<Personal>UserDeatils=new ArrayList<Personal>();
		int value=us.AddPersonal(UserId, FirstName, LastName, FatherName, MotherName, dob, age, Gender, PhoneNumber, Mail, Address, CAREER_OBJECTIVES, STRENGTHS, Languages,HOBBIES,request);
		session.setAttribute("UserDeatils", UserDeatils);
		

		if(value==1) {
		response.sendRedirect("EducationalDetails.jsp");
		}
	     
	
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}

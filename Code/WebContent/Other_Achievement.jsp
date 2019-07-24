<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.niit.Bean.Achievements"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rewards/ Achievement</title>
</head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
table {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
td,th {
  border: 1px solid #ddd;
  padding: 8px;
}

 tr:nth-child(even){background-color: #f2f2f2;}

tr:hover {background-color: #ddd;}

th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
<body>
<jsp:include page="Menu.jsp" />

<!--  <%
		//UserService us = new UserService();
		//ArrayList<Achievements> achievements =  GlobalConstants.achievements;
	%>-->
	
	
<fieldset>
			<legend align="center"><b>Achievements</b></legend>
			<table style="text-align: center; width: 100%;" align="center" border="1" cellspacing="0">
				<tr>
					<th>Sr No</th>
					<th>Award/Recognition</th>
					<th>Company Name</th>
				
					<th>Date</th>
				</tr>

				<%
					/*if(achievements != null && !achievements.isEmpty())
					{ 
						for(int i=0; i<achievements.size();i++)
						{
							Achievements achieve = achievements.get(i);*/
				%>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					</tr>
				<%
					
				%>
			</table>
		<br>
		
	<form method="post" action="AddAchievementDeatils" class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin">
		<table>
			<tr>
				<td>Award/Recognition</td>
				<td><input type="text"
					name="AwardNAME" class="w3-input w3-border w3-animate-input"></td>
			</tr>
			<tr>
				<td>Company Name</td>
				<td><input type="text" name="Company" class="w3-input w3-border w3-animate-input"></td>
			</tr>


			<tr>
				<td>Date of Achievement</td>
				<td><input type="text"
					name="DATE" class="w3-input w3-border w3-animate-input"></td>
			</tr>
			
		</table></br>
		<input type="submit" value="Add" name="next" class="w3-btn w3-green"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="submit" value="Next" name="next" class="w3-btn w3-green"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="reset" value="Reset" class="w3-btn w3-green"/></br>
	</form>
	</fieldset>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="com.niit.Bean.Projects"%>
 <%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Projects</title>
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
</head>
<body>
<jsp:include page="Menu.jsp" />


		<fieldset>
			<legend align="center"><b>Projects</b></legend>
			<table style="text-align: center; width: 100%;" align="center" border="1" cellspacing="0">
				<tr>
					<th>Sr No</th>
					<th>Title Of Project</th>
					<th>Front End Technologies</th>
					<th>Back End Technologies</th>
					<th>Description</th>
					<th>Over All Technical Skills</th>
				</tr>

				
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					
				</tr>
				
			</table>
		<br>

	<form method="post" action="AddProjectsDeatils" class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin">
		<table>
			<tr>
				<td>Title of Project</td>
				<td><input type="text" name="project" class="w3-input w3-border w3-animate-input"></td>
			</tr>
			

			<tr>
				<td>Front End Technologies</td>
				<td><input type="text"
					name="FrontEnd" class="w3-input w3-border w3-animate-input"></td>
			</tr>
			
			<tr>
				<td>Back End Technologies</td>
				<td><input type="text"
					name="BackEnd" class="w3-input w3-border w3-animate-input"></td>
			</tr>
	
			
			<tr>
				<td>Over All Technical Skills </td>
				<td><input type="text"
					name="Skill" class="w3-input w3-border w3-animate-input"></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><input type="text"
					name="Description" class="w3-input w3-border w3-animate-input"></td>
			</tr>
	
				</table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;				<input type="submit" value="Add" name="next" class="w3-btn w3-green"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;				<input type="submit" value="Next" name="next" class="w3-btn w3-green" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;				<input type="reset" value="Reset" class="w3-btn w3-green" />
		
	</form>
	</fieldset>
</body>
</html>
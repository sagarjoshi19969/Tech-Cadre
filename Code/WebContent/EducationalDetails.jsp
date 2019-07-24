<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Educational Details</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script type="text/javascript">
	$(document).ready(function() {
		$("#addEdu").click(function() {
			var element = document.getElementById("tblData");
			element.appendChild("<tr></tr>");
		});
	});
</script>
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
		<legend align="center"><b> Educational Details </b></legend>
		<table >
			<tr>
				<th>Sl. No</th>
				<th>College/School Name</th>
				<th>Degree/Boards/University</th>
				<th>Subject/Combination</th>
				<th>Passing out Year</th>
				
				<th>Percentage/CGPA/SCGPA</th>
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
		<form action="AddEducationDeatils" method="post" class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin">
			<table>
				
				<tr>
					<td>College/School Name</td>
					<td><input type="text"
						name="C-S-NAME"
						id=""  class="w3-input w3-border w3-animate-input"/></td>
				</tr>
				<tr>
					<td>Degree/Boards/University</td>
					<td><input type="text" name="DEGREE"
						id="" class="w3-input w3-border w3-animate-input"/></td>
				</tr>
				<tr>
					<td>Subject/Combination</td>
					<td><input type="text" name="SUBJECT"
						id="" class="w3-input w3-border w3-animate-input"/></td>
				</tr>
				<tr>
					<td>Passing Out Year</td>
					<td><input type="text" name="YEAR"
						id="" class="w3-input w3-border w3-animate-input" /></td>
				</tr>
				
				<tr>
					<td>Percentage</td>
					<td><input type="text" name="PERCENTAGE"
						id="" class="w3-input w3-border w3-animate-input" /></td>
				</tr>

				<tr>
			
					<td ><input type="submit" value="Add" name="next" class="w3-btn w3-green"/></td>
					<td ><input type="reset" value="Reset"  class="w3-btn w3-green"/></td>
					<!-- <td colspan="2"><input type="submit" value="Next" name="next" /></td>-->
					
				</tr>

			</table>
		</form>
	</fieldset>
</body>
</html>
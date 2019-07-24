<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Experience Details</title>
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
<script type="text/javascript">
	$(document).ready(function() {
		$("#addEdu").click(function() {
			var element = document.getElementById("tblData");
			element.appendChild("<tr></tr>");
		});
	});
</script>
</head>
<body>
<jsp:include page="Menu.jsp" />
<fieldset>
			<legend align="center"><b> Experience Details</b> </legend>
			<table style="text-align: center; width: 100%;" align="center" border="1" cellspacing="0">
				<tr>
					<th>Sl No</th>
					<th>Company</th>
					<th>Designation</th>
					<th>Experience(In Years)</th>
					<th>Summary-Work Profile</th>
				</tr>

				
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					
				</tr>
				
			</table>
		<br>
		<form action="AddExperiencesDeatils" method="post" class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin">
			<table>
				<tr>
					<td>Company</td>
					<td><input type="text" name="Company" size="32"  class="w3-input w3-border w3-animate-input" /></td>
				</tr>
				<tr>
					<td>Designation</td>
					<td><input type="text"
						name="DESIGNATION" size="32" class="w3-input w3-border w3-animate-input" /></td>
				</tr>
				<tr>
					<td>Experience(In Years)</td>
					<td><input type="text"
						name="Experience" size="32" class="w3-input w3-border w3-animate-input"/></td>
				</tr>
				<tr>
					<td>Summary-Work Profile</td>
					<td><input type="text"
						name="Summary" size="32" class="w3-input w3-border w3-animate-input"/></td>
				</tr>
				
				
				
			</table>
			<input type="submit" value="Add" name="next" class="w3-btn w3-green"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="submit" value="Next" name="next" class="w3-btn w3-green" />
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset" value="Reset" class="w3-btn w3-green" />
		</form>
	</fieldset>
</body>
</html>
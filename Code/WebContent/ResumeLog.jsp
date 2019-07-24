	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Build Resume</title>
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

/*the container must be positioned relative:*/
.custom-select {
  position: relative;
  font-family: Arial;
}

.custom-select select {
  display: none; /*hide original SELECT element:*/
}

.select-selected {
  background-color: DodgerBlue;
}

/*style the arrow inside the select element:*/
.select-selected:after {
  position: absolute;
  content: "";
  top: 14px;
  right: 10px;
  width: 0;
  height: 0;
  border: 6px solid transparent;
  border-color: #fff transparent transparent transparent;
}

/*point the arrow upwards when the select box is open (active):*/
.select-selected.select-arrow-active:after {
  border-color: transparent transparent #fff transparent;
  top: 7px;
}

/*style the items (options), including the selected item:*/
.select-items div,.select-selected {
  color: #ffffff;
  padding: 8px 16px;
  border: 1px solid transparent;
  border-color: transparent transparent rgba(0, 0, 0, 0.1) transparent;
  cursor: pointer;
  user-select: none;
}

/*style items (options):*/
.select-items {
  position: absolute;
  background-color: DodgerBlue;
  top: 100%;
  left: 0;
  right: 0;
  z-index: 99;
}

/*hide the items when the select box is closed:*/
.select-hide {
  display: none;
}

.select-items div:hover, .same-as-selected {
  background-color: rgba(0, 0, 0, 0.1);
}
</style>
</head>
<body>
<jsp:include page="Menu.jsp" />
<fieldset>

		<legend align="center"><b>**Personal Details**</b> </legend>
		<!-- <form action="control?action=personal" method="post"> -->
		<form action="AddPersonalDeatils" method="post" class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin">
			<table  align="center">
				<tr>
					
					<td>First Name<input type="text" name="Full Name"
						id="" class="w3-input w3-border w3-animate-input"
						placeholder="Name"  value="<%=session.getAttribute("username") %>"/></td>

					<td> Last Name     <input type="text" name="Last Name"
						id="" class="w3-input w3-border w3-animate-input"
						placeholder="Last Name" /></td>
				</tr>
				<tr>
					
					<td>Father Name<input type="text" name="Father Name"
						id="" class="w3-input w3-border w3-animate-input"
						placeholder="Father's Name" /></td>

					<td>Mother Name <input type="text" name="Mother Name"
						id="" class="w3-input w3-border w3-animate-input"
						placeholder="Mother's Name" /></td>
				</tr>

				<tr>
					
					<td>Date Of Birth<input type="text" name="D-O-B"
						id="" class="w3-input w3-border w3-animate-input"
						placeholder="dd/mm/yyyy" /></td>

					<td>Age <input type="text" name="Age"
						id="" class="w3-input w3-border w3-animate-input" placeholder="Age" /></td>
				</tr>

				<tr>
					

					<td>Gender <select name="Gender"
						id="" class="selectbx">
							<option>-- select --</option>
							<option value="MALE">MALE</option>
							<option value="FEMALE">FEMALE</option>
					</select>
					<td>Languages known<input type="text" name="Languages"
						id="" class="w3-input w3-border w3-animate-input" /></td>
					
					
					
				</tr>

				<tr>
				

					<td>Contact<input type="text" name="Phone Number"
						id="" class="w3-input w3-border w3-animate-input"
						placeholder="+00-0000000000" /></td>

					<td>Mail Id  <input type="text" name="Mail"
						id="" class="w3-input w3-border w3-animate-input"
						placeholder="xyz@gmail.com" /></td>
					
				</tr>


				<tr>
					

					<td>Address<textarea class="w3-input w3-border w3-animate-input"
							name="Address" id=""></textarea></td>

					<td>Career Objectives<textarea class="w3-input w3-border w3-animate-input"
							name="CAREER_OBJECTIVES"
							id=""></textarea>
							</td>
					
				</tr>

				<tr>
					

					
					<td>Skills<textarea class="w3-input w3-border w3-animate-input"
							name="STRENGTHS"
							id=""></textarea></td>
							<td>Hobbies<textarea class="w3-input w3-border w3-animate-input"
							name="HOBBIES" id=""></textarea></td>
				</tr>

				<tr>
					
					<td>
						<input type="submit" value="Next" class="w3-btn w3-green"/></td>
					<td><input type="reset" value="Reset" class="w3-btn w3-green" /></td>
					
				</tr>

			</table>
		</form>
	</fieldset>
</body>
</html>


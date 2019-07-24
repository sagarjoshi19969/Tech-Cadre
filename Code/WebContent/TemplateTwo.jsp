<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.niit.Bean.Personal"%>
<%@page import="com.niit.Bean.Education"%>
<%@page import="com.niit.Bean.Experience"%>
<%@page import="com.niit.Bean.Projects"%>
<%@page import="com.niit.Bean.Achievements"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.niit.DbConnection.DataBaseController"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Template 2</title>

<style type="text/css">
p,li{
text-transform: capitalize;
}
/*CSS for resume-template*/
body {
	font-family:verdana;
	background-color:#ffe5ce;
	min-width:650px;
	overflow:scroll;
}
/*edited with JQuery*/
h1 {
	text-align:left;
	color:#ff9328;
}
.image {
	width:200px;
	height:200px;
	float:right;
}
.image-content {
	border-color:black;
	border-width:3px;
	border-style:dotted;
	border-radius:50%;
}
/*edited with JQuery*/
.personal-info {
	text-align:left;
	padding-bottom:5px;
}
.resume-category {
	width:200px;
	float:left;
	margin-top:0px;
	padding-bottom:1em;
	color:#ff9328;
	
}
.resume-subject {
	margin-top:0px;
	margin-left:200px;
	padding:0px 0px 15px 0px;
	margin-bottom:-10px;
	
}
.resume-info {
	margin-left:200px;	
}
.border {
	border-bottom:3px solid;
	margin-top:30px;
	margin-bottom:30px;
}
.content {
	background-color:white;
	padding:10px 10px 10px 10px;
	box-shadow: 0 0 30px black;
	border-radius:25px;
	margin: 40px 40px 40px 40px;
	
	
}
.date {
	float:right;
	margin-top:0px;
	background-color:#e5ddce;
}
.job-location {
	font-style:italic;
	margin:-5px 0px 0px 0px;
}
p {
	margin: 5px 4px 4px 4px;
}
footer {
  text-align: center;
  font-family: verdana;
}
.button-module {
		position: absolute;
	}
	.button {
		margin: 50px;
		height: 72px;
		width: 2000px;
		border: none;
		padding: 10px;
		position: absolute;
		top: 0;
		right: 0;
		font-size: 1em;
		text-align: center;
		transition: all 0.3s ease;
		z-index: 0;
	}
	.button.green-button {
		background-color: rgba(0, 128, 0, 1);
	}
	.floating-button {
		background-color: rgba(233, 30, 99, 1);
		border-radius: 50%;
		color: #fff;
		height: 75px;
		width: 75px;
		font-size: 1em;
		font-weight: 100;
		box-shadow: 0 4px 10px 0 rgba(0, 0, 0, .5);
	}
	.floating-button:active, .floating-button:hover {
		background-color: rgba(0, 100, 0, 1);
		box-shadow: 1px 5px 20px 0 rgba(0, 0, 0, .6);
	}
	.floating-button:focus {
		outline: none;
	}
	.is-selected {
		display: block;
		position: absolute;
		background-color: rgba(250, 250, 250, 0.3);
		border-radius: 100%;
		-webkit-transform: scale(0);
		-moz-transform: scale(0);
		-o-transform: scale(0);
		transform: scale(0);
		z-index: 10;
	}
	.animate {
		-webkit-animation: ripple 0.4s linear;
		-moz-animation: ripple 0.4s linear;
		-o-animation: ripple 0.4s linear;
		animation: ripple 0.4s linear;
	}
	@
	-webkit-keyframes ripple { 100% {
		opacity: 0;
		-webkit-transform: scale(2.5);
	}
}

@
-moz-keyframes ripple { 100% {
	opacity: 0;
	-moz-transform: scale(2.5);
}

}
@
-o-keyframes ripple { 100% {
	opacity: 0;
	-o-transform: scale(2.5);
}

}
@
keyframes ripple { 100% {
	opacity: 0;
	transform: scale(2.5);
}

}
.expanded-button.button {
	border-radius: 50px;
	width: 350px;
}

</style>

<script type="text/javascript">
$("h1").css("text-align","center");
$(".personal-info").css("text-align","center");

</script>
</head>
<body>
<button class="button floating-button green-button"
		onclick="window.print()">PDF</button><br>
		<a href="UserDashBoard.jsp">Home</a>
<%
		DataBaseController d = new DataBaseController();
		String UserId = (String) session.getAttribute("username");

		Personal p = new Personal();
		p = d.getPersonal(UserId);

		Education edu = new Education();
		edu = d.getEducation(UserId);

		Experience exp = new Experience();
		exp = d.getExpirence(UserId);

		Achievements ach = new Achievements();
		ach = d.getAchievements(UserId);
		Projects proj = new Projects();
		proj = d.getProjects(UserId);
	%>
  <div class="content">
    <h1>
		<%=p.getFirstName() %>  <%=p.getLastName() %>
	</h1>
    <div class="personal-info">
      <p>Carrier Objective :: <%=p.getCareerObjectives() %></p>
    </div>
    <div class="border"></div>
    <h2 class="resume-category"> 
		Education
	</h2>
    <h3 class="resume-subject">
			College/Certification Title/School
		</h3>
    <div class="resume-info">
      
      <p class="job-location"><%=edu.getCollegeSchoolName() %></p>
      <ul>
        <li>Degree/Board/University :: <%=edu.getDegree() %></li>
        <li>Subject :: <%=edu.getSubjectOrCombination() %></li>
        <li>Pass Out Year :: <%=edu.getPOY() %></li>
        <li>Percent/CGPA/SCGPA ::<%=edu.getPercentage() %> %</li>
      </ul>
    </div>
    
    <div class="border"></div>
    <h2 class="resume-category">
		Work Experience
	</h2>
    <h3 class="resume-subject">
			Job Title :: <%=exp.getDesignation() %>
		</h3>
    <div class="resume-info">
      <p class="job-location"><%=exp.getCompany() %></p>
      <ul>
         <li>Experience ::<%=exp.getExperience() %></li>
        <li>Summary :: <%=exp.getSummaryOrProjects() %></li>
      </ul>
    </div>
    
    
    <div class="border"></div>
    <h2 class="resume-category">
		Achievements
	</h2>
    <h3 class="resume-subject">
			                 Title :: <%=ach.getAwardsOrRecognition() %>
		</h3>
    <div class="resume-subject">
      <p class="job-location">Organization :: <%=ach.getCompanyName() %></p>
      <ul>
        <li>Date Of Award :: <%=ach.getDateOfAward() %></li>
      </ul>
    </div>
    <div class="border"></div>
    <h3 class="resume-category">
		Projects & Technical Skills
	</h3>
    <div class="resume-subject">

      <p><b>Languages Known </b>
        <ul>
          <li><%=p.getStrengths() %></li>
        </ul>
      </p>
      <p><b>Project</b>
        <ul>
          <li>Name :: <%=proj.getProjects() %></li>
          <li>FrontEnd :: <%=proj.getFrontEnd() %>
          <li>BackEnd :: <%=proj.getBackEnd() %>
          <li>OverAll Technical Skills :: <%=proj.getSkills() %>
          <li>Description :: <%=proj.getDescription() %>
          <ul>
      </p>
    </div>
    <div class="border"></div>
    <h2 class="resume-category">
		Personal Details
	</h2>
    <div class="resume-subject">
    
      <ul>
        <li>Father Name :: <%=p.getFatherName() %></li>
        <li>Mother Name :: <%=p.getMotherName() %></li>
        <li>Address :: <%=p.getAddress() %></li>
        <li>D-O-B :: <%=p.getDob() %></li>
        <li>Age :: <%=p.getAge() %></li>
        <li>Mobile No :: <%=p.getMobileNo() %></li>
        <li>Email-Id :: <%=p.getEmailId() %></li>
        <li>Languages :: <%=p.getLangaugeProf() %></li>
        <li> Hobbies :: <%=p.getHobbies() %>
      </ul>
    </div>
  </div>
  <footer> Resume Generated By Online Resume Builder</footer>
</body>
</body>
</html>
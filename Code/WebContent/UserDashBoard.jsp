<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Welcome </title>
<style type="text/css">


@import 'https://fonts.googleapis.com/css?family=Lato:300,400';

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}
body, html {
	font-family: 'Lato', sans-serif;
	font-size: 20px;
	height: 100%;
	position: relative;
}

.clearfix:after {
	content: "";
	display: block;
	clear: both;
}

a {
	color: #fff;
	text-decoration: none; 
}

.nav-btn {
	width: 100%;
	height: 35px;
	padding-top: 4px;
	color: #D5D3D3;
	background-color: #212121;			 ;
	text-align: center;
	cursor: pointer;
	display: none;
}
.nav-btn:active {
	background-color: #090909; 
}

header {
	height: 50px;
	width: 100%;
	background-color: #274C6B;
	display: none;
}

header .logo {
	opacity: 0.9;
	font-size: 120%;
	padding-top: 9px;
	padding-left: 8px;
	color: #fff;
}
header .logo span {
	font-weight: 300;
}

.container {
	width: 100%;
	height: 100%;
	position: relative;
}

.sidebar {
	width: 250px;
	background-color: #302F2F;
	position: fixed;
	top: 0px;
	left: 0;
	bottom: 0;
	box-shadow: 1px 0px 10px #777;
}

.sidebar nav > a {
	font-size: 150%;
	display: inline-block;
	padding: 30px 0px;
	padding-left: 30px;
	opacity: 0.7;
	transition: all 0.2s;
}
.sidebar nav > a:hover {
	opacity: 1;
}

.sidebar nav a span {
	font-weight: 300;
}

.sidebar nav ul {
	list-style: none;
}

.sidebar nav ul li {
	font-size: 70%;
	padding: 19px 0;	
	padding-left: 20px;
	border-bottom: 0.5px solid #111;
}

.sidebar nav ul li:nth-child(1):hover {
	background-color: #e67e22;
}

.sidebar nav ul li:nth-child(1).active {
	background-color: #e67e22;
}

.sidebar nav ul li:nth-child(2):hover {
	background-color: #2980b9;
}

.sidebar nav ul li:nth-child(2).active {
	background-color: #2980b9;
}

.sidebar nav ul li:nth-child(3):hover {
	background-color: #16a085;
}

.sidebar nav ul li:nth-child(3).active {
	background-color: #16a085;
}

.sidebar nav ul li:nth-child(4):hover {
	background-color: #8e44ad;
}

.sidebar nav ul li:nth-child(4).active {
	background-color: #8e44ad;
}

.sidebar nav ul li:nth-child(5):hover {
	background-color: #f1c40f;
}

.sidebar nav ul li:nth-child(5).active {
	background-color: #f1c40f;
}


.sidebar nav ul li a {
	color: #D7D5D5;
}

.sidebar nav ul li:hover a{
	color: #fff;
}

.main-content {
	background-color: #fafafa;
	width: calc(100% - 250px);
	height: 100%;
	margin-left: 250px;
	padding: 20px 30px;
}
.main-content .panel-wrapper {
	margin: 20px 0;
	box-shadow: 0px 1px 5px #777;
}

.main-content .panel-wrapper .panel-head {
	background-color: #00A5F2;
	color: #fff;
	padding: 10px 10px;
	border: 1px solid #00A5F2;
}
.main-content .panel-wrapper .panel-body {
	padding: 20px 10px;
	font-size: 80%;
}

@media only screen and (max-width: 420px){
	header {
		display: block;
	}
	.nav-btn {
		display: block;
	}
	.sidebar {
		position: relative;
		height: 378px;
		width: 100%;
		display: none;
		margin-bottom: 40px;
		z-index: 1000;
	}
	.main-content {
		width: 100%;
		margin-left: 0;
		z-index: -1;
		position: relative;
	}
}

@media only screen and (max-width: 768px){
	header {
		display: block;
	}
	.nav-btn {
		display: block;
	}
	.sidebar {
		position: relative;
		height: 378px;
		width: 100%;
		display: none;
		margin-bottom: 40px;
		z-index: 1000;
	}
	.main-content {
		width: 100%;
		margin-left: 0;
		z-index: -1;
		position: relative;
	}
}

</style>

<script type="text/javascript">
$(document).ready(function() {
	$('.nav-btn').on('click', function(event) {
		event.preventDefault();
		/* Act on the event */
		$('.sidebar').slideToggle('fast');

		window.onresize = function(){
			if ($(window).width() >= 768) {
				$('.sidebar').show();
			} else {
				$('.sidebar').hide();
			}
		};
	});
});
</script>
</head>

<body>

<%
					response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate"); //http1.1
					response.setHeader("pragma", "no-cache");//http 1.0
					response.setHeader("Expires", "0");//proxy
					if (session.getAttribute("username") == null) {
						response.sendRedirect("index.html");
					}
				%>
<header>
		<div class="logo">Resume<span>Builder</span></div>
	</header>
	<div class="nav-btn">Menu</div>
 	<div class="container">
		
		<div class="sidebar">
			<nav>
				<a href="#">Hello <span>Friend</span></a>
				<ul>
					<li class="active"><a href="#">Dashboard</a></li>
					<li><a href="BuildResume.html">Build Resume</a></li>
					<li><a href="ChooseTemplate.jsp">Download Resume</a></li>
					<li><a href="PaymentPage.jsp">Buy Premium</a></li>
					<li><a href="${pageContext.request.contextPath}/LogoutServlet">LogOut</a></li>
				</ul>
			</nav>
		</div>

		<div class="main-content">
			<h1>Welcome</h1>
			<p>Here you can Build Resume ,See Your Stuff And Latest Technology News <%=session.getAttribute("username") %></p>
			<div class="panel-wrapper">
				<div class="panel-head">
					News
				</div>
				<div class="panel-body">
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Totam fugiat culpa quia possimus molestiae id sapiente ad eveniet, aliquid, eum sint fuga eius, ratione suscipit ut minus voluptates dicta nesciunt.
				</div>
			</div>
			<div class="panel-wrapper">
				<div class="panel-head">
					News
				</div>
				<div class="panel-body">
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Totam fugiat culpa quia possimus molestiae id sapiente ad eveniet, aliquid, eum sint fuga eius, ratione suscipit ut minus voluptates dicta nesciunt.
				</div>
			</div>
			<div class="panel-wrapper">
				<div class="panel-head">
					News
				</div>
				<div class="panel-body">
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Totam fugiat culpa quia possimus molestiae id sapiente ad eveniet, aliquid, eum sint fuga eius, ratione suscipit ut minus voluptates dicta nesciunt. Totam fugiat culpa quia possimus molestiae id sapiente ad eveniet, aliquid, eum sint fuga eius, ratione suscipit ut minus voluptates dicta nesciunt.
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>
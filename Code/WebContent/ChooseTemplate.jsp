<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Choose Template</title>
<style type="text/css">
img {
	border: 1px solid #ddd;
	border-radius: 4px;
	padding: 5px;
	width: 500px;
	display: block;
  margin-left: auto;
  margin-right: auto;
}

img:hover {
	box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5);
}

div.polaroid {
	
	width: 32%;
	background-color: white;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	margin-bottom: 25px;
}

div.container {
	text-align: center;
	padding: 10px 20px;
}
.clearfix::after {
  content: "";
  clear: both;
  display: table;
  }
 * {
  box-sizing: border-box;
}
</style>

</head>
<body>
<div align="center">
<div class="clearfix">
	<div class="polaroid">
		<a href="TemplateOne.jsp"> <img alt="template1"
			src="images/temp1.png">
		</a>
		<div class="container">
			<p>
				<b>Template One</b>
			</p>
		</div>
	</div>
	<div class="polaroid">
		<a href="TemplateTwo.jsp"> <img alt="template2"
			src="images/temp2.png">
		</a>
		<div class="container">
			<p>
				<b>Template Two</b>
			</p>
		</div>
	</div>
</div>
</div>

</body>
</html>
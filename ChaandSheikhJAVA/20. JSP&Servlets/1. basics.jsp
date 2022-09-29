<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hello JSP</title>
</head>
<body>
	<h1>Hello JSP</h1>
	<!-- These tags are called declarative tags -->
	<%! public int x = 22;
		public int y = 90;
	%>
	
	<!-- These tags are called expression tags and are used to print a expression on webpage -->
	<%= x+y %><br>
	<%= false %><br>
	<%= new String("Abhishek") %><br>
	<%= new java.util.Date() %><br>
	<%= 25*45 %>
	<%= 45 > 25 %>
	
	
	
</body>
</html>
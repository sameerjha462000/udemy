<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP file</title>
</head>
<body>
	<!-- If we want to import several packages then we can use comma in between
		 individual import statement
	 -->
	<%@ page import="org.ey.ServletsTuts.UserDefined,java.util.*" %>
	<% 
		out.println(new Date() + "<br>");
	  	UserDefined u = new UserDefined();
	  	out.print(u.Demo());
	%>
</body>
</html>
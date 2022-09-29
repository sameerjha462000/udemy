<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hello JSP</title>
</head>
<body>
	<!-- This is a normal HTML comment, We can use this to comment the JSP tags but that would only have
		 effects on printable elements.
	 -->
	 
	 <!-- For example, these two would not be printed as HTML comment is enough to suppress the normal printable statements inside the expression and scriptlet tags -->
	 <!-- <%= 56 %> -->
	 <!-- <% out.print(false); %> -->
	 
	 
	 <!-- But HTML comment would not be able to suppress the following scriptlet element -->
	 <!-- <% response.sendRedirect("http://www.google.com"); %> -->
	 
	 <!-- If we want to comment out such tags then we must use JSP comments as shown below -->
	 <%-- response.sendRedirect("http://www.youtube.com"); --%>
</body>
</html>
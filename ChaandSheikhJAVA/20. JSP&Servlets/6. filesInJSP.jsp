<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP file</title>
</head>
<body>
	  <!-- This is used for adding static content -->
	  <%@ include file="file1" %>
	  
	  <br/>
	  
	  <!-- This is used for adding dynamic content -->
	  <jsp:include page="file2"></jsp:include>
	  
</body>
</html>
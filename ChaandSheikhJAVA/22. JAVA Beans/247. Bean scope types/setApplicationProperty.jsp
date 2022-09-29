<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>This is set application property</title>
</head>
<body> 
<jsp:useBean id="user" class="org.ey.beans.User" scope="application"></jsp:useBean>
<jsp:setProperty property="firstName" name="user" value="Abhishek"/>
<jsp:setProperty property="lastName" name="user" value="jha"/>
Values has been set
</body>
</html>
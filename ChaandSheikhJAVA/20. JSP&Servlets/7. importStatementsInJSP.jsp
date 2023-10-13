<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP file</title>
</head>
<body>
	  <!-- This is used for importing -->
	  <%@ page import="java.util.*" %>
	  
	  <%--This is very cumbersome to write that is why we have import statements --%>
	  <% out.print(new java.util.Date()); %>
	  
	  <br/>
	  
	  <%-- Now after using the import statement the above --%>
	  
	  <% out.println(new Date()); %>
	  
	  <br/>
	  
	  
	  	  
	  <% 
	  	  ArrayList<Integer> list = new ArrayList<>();
		  list.add(900);
		  list.add(676);
		  list.add(789);
		  list.add(7878);
		  
		  out.println(list);
	  %>
</body>
</html>
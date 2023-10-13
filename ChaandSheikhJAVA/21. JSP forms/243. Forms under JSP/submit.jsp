<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Name : <%= request.getParameter("name") %><br/>
	Gender : <%= request.getParameter("gender") %><br/>
	Language : <% 
	
	String[] langs = request.getParameterValues("language");
	
	if(langs != null){
		for(String str : langs){
			out.println(str + " ");
		}
		
	}else{
		out.println("null selected");
	}
	
	
	%><br/>
	Country : <%= request.getParameter("country") %>
</body>
</html>
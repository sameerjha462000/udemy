<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hello JSP</title>
</head>
<body>
	<%
		int x = 90;
		out.println(x+"<br>");
		if(x == 25)
		{
			out.println("x is 25");
		}else{
			out.println("x is not 25");
		}
		
	%>

	<br>

	<!-- In case of printing to the webpage use out.print() or out.println() there is no difference in between them -->

	<%
		/**
		 * We can use single line and multiline java comments in the scriptlet tag.
	         * However, We cannot use them in tags other than scriptlet tags.
		 */

		out.print("<h2>See the loop below</h2>");
		for(int i = 0;i<10;i++){
			out.print(i+"<br>");
		}
	%>
	
</body>
</html>
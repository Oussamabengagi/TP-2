<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% double discriminant; %>
<% double a = Double.parseDouble(request.getParameter("a")); %>
<% double b = Double.parseDouble(request.getParameter("b")); %>
<% double c = Double.parseDouble(request.getParameter("c")); %>
<% double x1=0; %>
<% double x2=0; %>

<% discriminant = b*b-4.0*a*c; %>
<%
if(discriminant<0)
{
    
    out.println("<H1 style='background-color:red;'>Pas de solution dans R  </H1>");
}
else if (discriminant==0) {
	
	
	out.println("Value of discriminant: " + -b/2*a + "<br/>");
	
}
else {
	x1 = (-b-Math.sqrt(discriminant))/2.0/a;
    x2 = (-b+Math.sqrt(discriminant))/2.0/a;
    out.println("<ul style='background-color:green;'>");
    out.println("<li>valeur de discriminant: " + discriminant + "</li>");
    out.println("<li>valeur de x1: " + x1 + "</li>");
    out.println("<li>valeur de x2: " + x2 + "</li>");
    
    out.println("</ul>");
	
}
	



%>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<% double taille = Double.parseDouble(request.getParameter("taille")); %>


<%
if (request.getParameter("r").equals("H")) {
	out.println("<h1>Votre Poid idéal = " + ((62.1 * taille) - 44.7)+"</h1>");
	}
else {
	out.println("<h1>Votre Poid idéal = " + ((72.7 * taille) - 58) + "</h1>");
}



%>

</body>
</html>
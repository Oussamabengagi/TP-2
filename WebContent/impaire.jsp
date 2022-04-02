<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%! int impair; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


   <body>
      <%for ( impair = 1; impair <= 10; impair++){ %>
         <% if ((impair % 2) != 0 ) { %> 
         <p> <% out.println(impair); %></p>
         <% } %>
      <%}%>


</body>
</html>
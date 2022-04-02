<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%! int N=10; %>
    <%! int i; %>
    <%! int j; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="4" align="center">
	<%for ( i = 1; i <= N; i++){ %>
	<tr>
	<%for (j =1; j<=N ; j++) { %>
         <% if (((j % 2) != 0 ) && (i%2 ) != 0 ) { %> 
         
         <td bgcolor="white">
         &nbsp; &nbsp; &nbsp;
         </td>
         <td bgcolor="black">
         &nbsp; &nbsp; &nbsp; 
         </td>
         
         
         <% } else if(((j % 2) != 0 ) && (i%2 ) == 0 )  { %>
         <td bgcolor="black">
         &nbsp; &nbsp; &nbsp; 
         </td>
         <td bgcolor="white">
         &nbsp; &nbsp; &nbsp; 
         </td>
         <%} %>
      <%}%>
      </tr>
      <%} %>
      </table>

</body>
</html>
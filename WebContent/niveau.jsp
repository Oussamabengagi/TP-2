<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% int somme = 0; %>
<% int somme2 = 0; %>
<% int somme_totale = 0; %>
<% String name = request.getParameter("name"); %>
<% 
// radio 1
if(request.getParameter("h").equals("f")) {
    somme = somme + 1;
}


else if(request.getParameter("h").equals("m")) {
    somme = somme + 2;
}

else if(request.getParameter("h").equals("b")) {
    somme = somme + 3;
}

// radio 2

if(request.getParameter("p").equals("ab")) {
    somme2 = somme2 + 1;
}


else if(request.getParameter("p").equals("mo")) {
    somme2 = somme2 + 2;
}

else if(request.getParameter("p").equals("bo")) {
    somme2 = somme2 + 3;
}


// calcule d'expertise

somme_totale = somme + somme2;


// affichage d'expertise

if (somme_totale <3) {
	out.println("<h1>" +name + "Vous êtes un débutant</h1>");
}
else if ((somme_totale <5 ) && (somme_totale >2 )) {
	out.println("<h1>" +name + "Vous avez un niveau moyen</h1>");
}
else {
	out.println("<h1>" +name + "Vous êtes un expert !</h1>");
}






%>
</body>
</html>
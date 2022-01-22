<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="beans.User"%>
<%@page import="service.UserService"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	UserService us = new UserService();
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	User u = us.findUser(email, password);
	%>
	<script>
	alert("<%=email + ' ' + password %>" );
	</script>
	<%   
	if (email.equals(u.getEmail()) && password.equals(u.getPassword())) {
		if(u.getEtat()==1){
			session.setAttribute("user", u.getUsername());
	 		session.setAttribute("Error", "");
			response.sendRedirect("index.jsp");

		}else{
	 		session.setAttribute("Error", "Impossible de se connecter");
	 		response.sendRedirect("Login.jsp");
		}
	} else if (u.getEmail() == "empty") {
		session.setAttribute("Error", "Mot de passe incorrect");
		response.sendRedirect("Login.jsp");
		
	
	}
	
	%>

</body>
</html>

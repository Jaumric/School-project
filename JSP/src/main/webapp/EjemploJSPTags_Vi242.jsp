<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <%
    
    String alumnos[]={"Alejandro","Sandia","Paco", "Pepe"};
    
    pageContext.setAttribute("losAlumnos", alumnos);
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	
	//Con las JSPTags todo este código es innecesario
	
	for(String tempAlumnos: alumnos) {
		
		out.print(tempAlumnos + "asddas<br>");
		
	}
	
	%>			

	<c:forEach var="tempAlumnos" items="${losAlumnos}">
	
	${tempAlumnos} <br/>
	
	</c:forEach>
	
</body>
</html>
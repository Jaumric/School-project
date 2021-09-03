<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert odd title here</title>
</head>
<body>

<%
	
	//Leyendo datos del formulario
	String ciudad_favorita=request.getParameter("ciudad_favorita");

	//Crear la cookie
	Cookie galleta=new Cookie("agencia_viajes.ciudad_favorita", ciudad_favorita); //Se suele usar esta nomenclatura para el nombre de las cookies
	
	//Tiempo de vida de la cookie
	
	galleta.setMaxAge(365*24*60*60); //De esta forma la cookie duraría un año
	
	//Enviar cookie al usuario
	response.addCookie(galleta);
	
%>

Gracias por enviar tus preferencias

<a href="AgenciaViajes_Vi240.jsp">Ir a la agencia de viajes</a>

</body>
</html>
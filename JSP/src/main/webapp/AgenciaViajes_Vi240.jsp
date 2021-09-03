<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1 style="text-align:center">Agencia de viajes</h1>

<%

	//Valor por defecto
	String ciudad_favorita="Madrid";

	//Lee la cookie de la petición del navegador
	Cookie[] galletas=request.getCookies();
	
	if(galletas!=null) {

		for (Cookie galletaTemporal : galletas) {
			
			if("agencia_viajes.ciudad_favorita".equals(galletaTemporal.getName())) {
				
				ciudad_favorita=galletaTemporal.getValue();
				
			}
			
		}
		
	}

%>

<h3> Vuelos a <%= ciudad_favorita %></h3>

<p>VUELO DE ODDLAND HASTA <%= ciudad_favorita.toUpperCase() %></p>

<p>HOTELES EN <%= ciudad_favorita.toUpperCase() %></p>

<p>DESCUENTOS EN RESTAURANTES DE <%= ciudad_favorita.toUpperCase() %></p>

</body>
</html>
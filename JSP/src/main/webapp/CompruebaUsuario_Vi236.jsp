<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String usuario=request.getParameter("usuario");
String contra=request.getParameter("contra");

Class.forName("com.mysql.jdbc.Driver");

try {
	
	Connection conexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/pruebas","root","holaqase");

	PreparedStatement statement=conexion.prepareStatement("SELECT * FROM USUARIOS WHERE USUARIO=? AND CONTRASENA=?");
	
	statement.setString(1, usuario);
	statement.setString(2, contra);
	
	ResultSet rs=statement.executeQuery();
	
	if(rs.absolute(1)) out.println("Usuario autorizado");
	else out.println("No se ha encontrado ningún usuario con estos datos");
	
} catch(Exception e) {
	
	out.print("ERROR, eres impar");
	
}

%>

</body>
</html>
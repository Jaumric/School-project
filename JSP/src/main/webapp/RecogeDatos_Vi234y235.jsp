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

String nombre=request.getParameter("nombre");
String apellido=request.getParameter("apellido");
String usuario=request.getParameter("usuario");
String contra=request.getParameter("contra");
String pais=request.getParameter("pais");
String tecno=request.getParameter("tecnologia");

Class.forName("com.mysql.jdbc.Driver");

try {
	
	Connection conexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/pruebas","root","holaqase");

	Statement statement=conexion.createStatement();

	String instruccionSql="INSERT INTO USUARIOS (Nombre, Apellido, Usuario, Contrasena, Pais, Tecnologia) VALUES ('" + nombre + "','" + apellido + "','" + usuario + "','" + contra + "','" + pais + "','" + tecno + "')";

	statement.executeUpdate(instruccionSql);

	out.println("Registrado con éxito");
	
} catch(Exception e) {
	
	out.print("ERROR, eres impar");
	
}

%>

</body>
</html>
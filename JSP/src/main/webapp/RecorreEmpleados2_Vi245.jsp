<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ page import="java.util.*, java.sql.*,odd.com.jsptags.Empleado_Vi243" %>
        
        
        <%
                        ArrayList<Empleado_Vi243> datos=new ArrayList<>();
                                                        	
                                                        	Class.forName("com.mysql.jdbc.Driver");
                                                        	
                                                        	try{
                                                        		
                                                        		Connection conexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp","root","holaqase");
                                                        		
                                                        		Statement statement=conexion.createStatement();
                                                        		
                                                        		String instruccionSql="SELECT * FROM EMPLEADOS";
                                                        		
                                                        		ResultSet rs=statement.executeQuery(instruccionSql);
                                                        		
                                                        		while(rs.next()) {
                                                        			
                                                        			datos.add(new Empleado_Vi243(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4)));
                                                        			
                                                        		}
                                                        		
                                                        		rs.close();
                                                        		conexion.close();
                                                        		
                                                        		pageContext.setAttribute("losEmpleados", datos);
                                                        		
                                                        	} catch(Exception e) {
                                                        		
                                                        		
                                                        		out.println("ERRadssadaOR, eres impar");
                                                        		
                                                        	}
                                                        	
                                                        
                                                
                        %>
        
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<table border=1>

	<tr><td>Nombre</td><td>Apellido</td><td>Puesto</td><td>Salario</td>
	
<c:forEach var="EmpTemp" items="${losEmpleados}">

	<tr>
	<td>${EmpTemp.nombre}</td><td> ${EmpTemp.apellido}</td><td> ${EmpTemp.puesto}</td>
		
		
		<td>
				
			<c:choose>
			
			<c:when test="${EmpTemp.salario>40000 && EmpTemp.salario<=50000}">
			
			${EmpTemp.salario+2000}
			
			</c:when>
			
			<c:when test="${EmpTemp.salario>=40000}">
			
			${EmpTemp.salario+5000}
			
			</c:when>
			
			<c:otherwise>
			
						${EmpTemp.salario-5000}
			
			</c:otherwise>
						
			</c:choose>
		
		</td>
		
		</tr>
		

</c:forEach>

	</table>

</body>
</html>
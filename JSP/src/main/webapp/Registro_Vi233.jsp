<html>

<meta charset="utf-8"> <%//Esto en teor�a hace que el programa detecte car�cteres latinos como los accentos, pero no funciona xd %>

<body>

<h1>

Usuarios registrados

</h1>

Usuario confirmado:<br/><br/>

Nombre: <%=request.getParameter("nombre") %> &nbsp; Apellido: <%=request.getParameter("apellido") %>

</body>



</html>
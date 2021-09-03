<%@ page import="odd.com.CalculosMatematicos.*" %>

<html>

<body>

<h1 style="text-align:center">

Objetos predefinidos JSP

</h1>

Petición datos del navegador: <%= request.getHeader("User-Agent") /*User Agent hace referencia al navegador*/ %>

<br/><br/>

Petición idioma utilizado: <%= request.getLocale() %>

</body>

</html>
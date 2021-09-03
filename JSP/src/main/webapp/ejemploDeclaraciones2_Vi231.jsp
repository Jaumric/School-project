<%@ page import="odd.com.CalculosMatematicos.*" %>

<html>

<body>

<h1 style="text-align:center">

Ejemplo de declaraciones 2

</h1>

El resultado de la suma es: <%= /*odd.com.CalculosMatematicos.Calculos_Vi231*/Calculos_Vi231.metodoSuma(7, 5) /*Esto se puede abreviar porque he importado las clases del paquete CalculosMatematicos*/ %>

<br>

El resultado de la resta es: <%= Calculos_Vi231.metodoResta(7, 5) %>

<br>

El resultado de la multiplicación es: <%= Calculos_Vi231.metodoMultiplica(7, 5) %>

</body>

</html>
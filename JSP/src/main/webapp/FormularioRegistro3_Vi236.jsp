<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Documento sin t�tulo</title>
<style>

body{
	background-color:#FFC;
}

table{
	background:#FF6;
	padding:10px;
	border:solid 2px #FF0000;
}

td{
	padding:5px 0;
}




</style>
</head>

<body>
<h1 style="text-align:center">Login</h1>
<form action="CompruebaUsuario_Vi236.jsp" method="get">

  <table width="25%">
    <tr>
      <td><label for="usuario">Usuario: </label></td>
      <td><input type="text" name="usuario" id="usuario"></td>
    </tr>
    <tr>
      <td><label for="contra">Contrase�a: </label></td>
      <td><input type="text" name="contra" id="contra"></td>
    </tr>
    <tr>
      <td colspan="2" align="center"><input type="submit" name="button" id="button" value="Login"></td>
    </tr>
  </table>
  <p><br>
  </p>
</form>
</body>
</html>
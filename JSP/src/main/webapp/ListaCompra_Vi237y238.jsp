<%@ page import="java.util.*" %>
<html>

<body>
<form name="Formulario_Compra" action="ListaCompra_Vi237y238.jsp">
 
  <p>Elige los artículos que quieres comprar:</p>
  <p>
    <label>
      <input type="checkbox" name="articulos" value="agua " >
      Rtx 3070 </label>
    <br>
    <label>
      <input type="checkbox" name="articulos" value="leche" >
      Ryzen 7 5800X </label>
    <br>
     <label>
      <input type="checkbox" name="articulos" value="pan" >
      NZXT H510 </label>
    <br>
     <label>
      <input type="checkbox" name="articulos" value="mazanas" >
      Asus X570-e gaming </label>
    <br>
     <label>
      <input type="checkbox" name="articulos" value="carne" >
      Razer Hunstman elite </label>
      <br>
       <label>
      <input type="checkbox" name="articulos" value="pescado" >
      Logitech G powerplay </label>
  </p>
  <p>
    <input type="submit" name="button" id="button" value="Enviar">
    <br>
  </p>
</form>

<h2>Carro de la compra:</h2>

<%

List<String> ListaElementos=(List<String>)session.getAttribute("misElementos");

if(ListaElementos==null) {
	
	ListaElementos=new ArrayList<String>();
	
	session.setAttribute("misElementos", ListaElementos); //En el caso de que no se haya creado aún el atributo "misElementos", este método lo crea
	
}

String[] elementos=request.getParameterValues("articulos"); //Este método devuelve un array con los objetos de arriba que tienen de nombre artículos, y pues indica si esos objetos están marcados o no.

if(elementos!=null) {
	
	for(String elem : elementos) {
		
		//out.println("<li>" + elem + "</li>");
		
		ListaElementos.add(elem);
		
	}
	
}

for(String elem : ListaElementos) {
	
	out.println("<li>" + elem + "</li>");
	
}

%>

</body>

</html>
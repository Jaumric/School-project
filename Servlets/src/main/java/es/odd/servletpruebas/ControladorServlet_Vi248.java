package es.odd.servletpruebas;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControladorServlet_Vi248
 */
@WebServlet("/ControladorServlet_Vi248")
public class ControladorServlet_Vi248 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControladorServlet_Vi248() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String [] productos = {"Destornillador", "Serrucho", "Tornillo", "Taladro"}; //Estos datos se tiene que suponer que se han sacado de la base de datos
		
		request.setAttribute("lista_productos", productos); //El setAttribute sirve para almacenar un atributo en el request (como el propio nombre indica xd)
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/VistaJSP_Vi248.jsp");
		
		dispatcher.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

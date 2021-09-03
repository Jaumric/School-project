package es.odd.servletpruebas;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistroUsuarios_Vi247
 */
@WebServlet("/RegistroUsuarios_Vi247")
public class RegistroUsuarios_Vi247 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistroUsuarios_Vi247() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter salida = response.getWriter();
		salida.println("<html><body>");
		salida.println("Nombre introducido " + request.getParameter("nombre") + "<br><br>");
		salida.println("Apellido introducido " + request.getParameter("apellido"));
		salida.println("</body></html>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html"); //Esto es importante para específicar el formato de respuesta.
		
		PrintWriter salida = response.getWriter();
		salida.println("<html><body>");
		salida.println("Nombre introducido " + request.getParameter("nombre") + "<br><br>");
		salida.println("Apellido introducido " + request.getParameter("apellido"));
		salida.println("</body></html>");	}

}

package Servlet;

import java.io.IOException;
import java.time.LocalDateTime;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ProcesarLoggin")
public class ProcesarLoggin extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    public ProcesarLoggin() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String correo = request.getParameter("correo");
		String password = request.getParameter("password");
						
		if(correo.equalsIgnoreCase("cortizmardones@gmail.com") && password.equalsIgnoreCase("Mhunter.4")) {
			System.out.println("Metodo doPost: Usuario: " + correo + " + password: " + password + " loggeado CORRECTAMENTE " + LocalDateTime.now() );
			request.getSession().setAttribute("correo",correo);
			response.sendRedirect("creditos.jsp");
		}else {
			System.out.println("Metodo doPost: Usuario: " + correo + " + password: " + password + " loggeado INCORRECTAMENTE "+ LocalDateTime.now() );
			response.sendRedirect("error.html");
		}
		
	}

}

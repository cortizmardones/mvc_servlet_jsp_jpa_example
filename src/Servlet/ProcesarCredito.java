package Servlet;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.pojo.Credito;
import model.pojo.Persona;

@WebServlet("/ProcesarCredito")
public class ProcesarCredito extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

    public ProcesarCredito() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Para imprimir
        //PrintWriter out = response.getWriter();

		//Valores recuperados del formulario.
		String nombre = request.getParameter("nombre");
		String rut = request.getParameter("rut");
		double monto = Double.parseDouble(request.getParameter("monto"));
		int cuotas =  Integer.parseInt(request.getParameter("cuotas"));
				
		ArrayList<Credito> listaCredito = new ArrayList<Credito>();

		// Detalle de cr�ditos
		Credito credito1 = new Credito();
		credito1.setIdCredito(1);
		credito1.setMonto(monto);
		credito1.setCuotas(cuotas);
		credito1.setFecha(LocalDate.now());

		// Se ingresan los creditos en la lista
		listaCredito.add(credito1);

		// Asociaci�n de creditos a las personas
		Persona persona = new Persona();
		persona.setRut(rut);
		persona.setNombre(nombre);
		persona.setListaCreditos(listaCredito);

		//Pasar los datos del credito ingresado a la vista
		ArrayList<String> listaAtributos = new ArrayList<String>();
		listaAtributos.add(persona.getNombre());
		listaAtributos.add(persona.getRut());
		listaAtributos.add(String.valueOf(credito1.getMonto()));
		listaAtributos.add(String.valueOf(credito1.getCuotas()));
		listaAtributos.add(credito1.getFecha().toString());
		double valorCuota = credito1.getMonto()/credito1.getCuotas();
		valorCuota = Math.round(valorCuota);
		listaAtributos.add(String.valueOf(valorCuota));
		
		//Agrego los valores a variables de session
		request.getSession().setAttribute("nombre",listaAtributos.get(0));
		request.getSession().setAttribute("rut",listaAtributos.get(1));
		request.getSession().setAttribute("montoColocado",listaAtributos.get(2));
		request.getSession().setAttribute("numeroCuotas",listaAtributos.get(3));
		request.getSession().setAttribute("fechaColocacion",listaAtributos.get(4));
		request.getSession().setAttribute("valorCuota",listaAtributos.get(5));
		response.sendRedirect("clientes.jsp");


	}

}

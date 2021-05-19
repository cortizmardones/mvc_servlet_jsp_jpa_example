package model.pojo;
import java.util.ArrayList;

public class Persona {
	
	private String rut;
	private String nombre;
	private ArrayList<Credito> listaCreditos;
	
	public Persona() {
		
	}
	
	public Persona(String rut, String nombre , ArrayList<Credito> listaCreditos) {
		this.rut = rut;
		this.nombre = nombre;
		this.listaCreditos = listaCreditos;
	}
	
	public String getRut() {
		return rut;
	}
	
	public void setRut(String rut) {
		this.rut = rut;
	}
	
	public String getNombre() {
		return nombre;
	}
	
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public ArrayList<Credito> getListaCreditos() {
		return listaCreditos;
	}

	public void setListaCreditos(ArrayList<Credito> listaCreditos) {
		this.listaCreditos = listaCreditos;
	}
	
	
}

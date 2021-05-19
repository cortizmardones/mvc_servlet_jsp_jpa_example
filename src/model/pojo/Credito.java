package model.pojo;
import java.time.LocalDate;

public class Credito {
	
	private int idCredito;
	private double monto;
	private int cuotas;
	private LocalDate fecha;

	public Credito() {

	}

	public Credito(int idCredito, double monto , int cuotas , LocalDate fecha) {
		this.idCredito = idCredito;
		this.monto = monto;
		this.cuotas = cuotas;
		this.fecha = fecha;
	}

	public int getIdCredito() {
		return idCredito;
	}

	public void setIdCredito(int idCredito) {
		this.idCredito = idCredito;
	}

	public double getMonto() {
		return monto;
	}

	public void setMonto(double monto) {
		this.monto = monto;
	}

	public int getCuotas() {
		return cuotas;
	}

	public void setCuotas(int cuotas) {
		this.cuotas = cuotas;
	}

	public LocalDate getFecha() {
		return fecha;
	}

	public void setFecha(LocalDate fecha) {
		this.fecha = fecha;
	}
	
	

	
	
}

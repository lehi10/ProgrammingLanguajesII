package model;

import java.io.Serializable;

public class Empleado implements Serializable{
	private int employeeID;
	private String firstName;
	private String lastName;
	private double hourlyRate;
	
	public Empleado() {}
	
	public Empleado(String firstName, String lastName, double hourlyRate) {
		this.employeeID = -1;
		this.firstName = firstName;
		this.lastName = lastName;
		this.hourlyRate = hourlyRate;
	}
	
	public int getEmployeeID() {
		return this.employeeID;
	}
	public String getFirstName() {
		return this.firstName;
	}
	public String getLastName() {
		return this.lastName;
	}
	public double getHourlyRate() {
		return this.hourlyRate;
	}
	
	public void setEmployeeID(int employeeID) {
		this.employeeID = employeeID;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public void setHourlyRate(double hourlyRate) {
		this.hourlyRate = hourlyRate;
	}

}

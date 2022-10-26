package interfaces;

import model.Employee;

public interface EmployeeInterface {
	public Employee register(Employee e);
	public Employee getEmployeeById(String id);
}

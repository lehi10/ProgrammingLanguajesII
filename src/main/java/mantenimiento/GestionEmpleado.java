package mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import interfaces.EmpleadoInterface;
import model.Empleado;
import utils.MySQLConexion;


public class GestionEmpleado implements EmpleadoInterface {

	@Override
	public int crearEmpleado(Empleado emp) {
		// TODO Auto-generated method stub
		
		Connection con = null;
		PreparedStatement pst= null;
		 try {
			 String sql = "INSERT into empleados values (null,?,?,?)";
			 con = MySQLConexion.getConecction();
			 pst = con.prepareStatement(sql);
			 pst.setString(1, emp.getFirstName());
			 pst.setString(2, emp.getLastName());
			 pst.setDouble(3, emp.getHourlyRate());
			 pst.executeUpdate();
		 }
		 catch(Exception error) {
			 System.out.println(error.getMessage());
		 }
		return 0;
	}

	@Override
	public ArrayList<Empleado> listarEmpleados() {
		Connection con = null;
		ArrayList<Empleado> list = new ArrayList<Empleado>();
		 try {
			 String sql = "SELECT * from empleados";
			 con = MySQLConexion.getConecction();
			 
			 Statement miStatement = con.createStatement();
			 // Ejecutar SQL
			 ResultSet miResultSet = miStatement.executeQuery(sql);
			 // Recorrer result set
			 while(miResultSet.next()) {
				 int id = miResultSet.getInt("employeeID");
				 String firstName = miResultSet.getString("firstName");
				 String lastName = miResultSet.getString("lastName");
				 double hourlyRate = miResultSet.getDouble("hourlyRate");

				 Empleado emp = new Empleado(firstName,lastName,hourlyRate);
				 emp.setEmployeeID(id);
				 
				 list.add(emp);
			    // System.out.println(miResultSet.getString("name") +" "+ miResultSet.getString("id"));
			 }
			 con.close();
			
		 }
		 catch(Exception error) {
			 System.out.println(error.getMessage());
		 }
		return list;
	}

	@Override
	public Empleado getEmpleado(int id) {
		Connection con = null;
		PreparedStatement pst= null;
		Empleado emp = null;
		 try {
			 String sql = "SELECT * FROM empleados WHERE employeeID = " + id;
			 con = MySQLConexion.getConecction();
			 Statement miStatement = con.createStatement();
			 // Ejecutar SQL
			 ResultSet miResultSet = miStatement.executeQuery(sql);
			 // Recorrer result set
			 miResultSet.next();
			 int idEmp = miResultSet.getInt("employeeID");
			 String firstNameEmp = miResultSet.getString("firstName");
			 String lastNameEmp = miResultSet.getString("lastName");
			 double hourlyRateEmp = miResultSet.getDouble("hourlyRate");

			 emp = new Empleado(firstNameEmp,lastNameEmp,hourlyRateEmp);
			 emp.setEmployeeID(idEmp);
			 con.close();
			 return emp;
		 }
		 catch(Exception error) {
			 System.out.println(error.getMessage());
		 }
		return null;
	}

	@Override
	public boolean eliminarEmpleado(int id) {
		Connection con = null;
		PreparedStatement pst= null;
		 try {
			 String sql = "DELETE FROM empleados WHERE employeeID = " + id;
			 con = MySQLConexion.getConecction();
			 pst = con.prepareStatement(sql);
			 pst.executeUpdate();
			 return true;
		 }
		 catch(Exception error) {
			 System.out.println(error.getMessage());
		 }
		return false;
	}

	@Override
	public int actualizarEmpleado(Empleado emp) {
		Connection con = null;
		PreparedStatement pst = null;
		 try {
			 String sql = "UPDATE empleados SET firstName=?, lastName=?, hourlyRate=? WHERE employeeID=?; ";
			 con = MySQLConexion.getConecction();
			 pst = con.prepareStatement(sql);
			 pst.setString(1, emp.getFirstName()); // 1 = primer signo de interrogacion ? en el string sql
			 pst.setString(2, emp.getLastName()); // 2 = primer signo de interrogacion ? en el string sql
			 pst.setDouble(3, emp.getHourlyRate()); // 3 = primer signo de interrogacion ? en el string sql
			 pst.setInt(4, emp.getEmployeeID()); // 4 = primer signo de interrogacion ? en el string sql
			 int response = pst.executeUpdate(); // retorna 1 si actualiza, y 0 si no actualiza
			 con.close();
			 return response;
		 }
		 catch(Exception error) {
			 System.out.println(error.getMessage());
		 }
		 return 0;
	}
}

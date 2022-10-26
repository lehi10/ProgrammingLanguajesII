package management;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import interfaces.RRHHInterface;
import model.Employee;
import utils.DBConnection;

public class ManagementRRHH implements RRHHInterface {

	@Override
	public ArrayList<Employee> listEmployees() {
		
		ArrayList<Employee> list = new ArrayList<Employee>();
		
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		try {
			/*
			con = DBConnection.getConecction();
			String sql = "SELECT * FROM `employee_tbl`";
			pst = con.prepareStatement(sql); // Prepara la consulta con el string sql
			rs = pst.executeQuery(); // ejecuta la consulta y captura resultados
			*/
			list = new ArrayList<Employee>();
			
			Employee emp = new Employee();
			emp.setEmployeeID(123);
			emp.setFirstName("Lehi Q");
			list.add(emp);
			/*
			while(rs.next()) {
				Employee emp = new Employee();
				emp.setEmployeeID(rs.getInt(0));
				emp.setFirstName(rs.getString(1));
				emp.setLastName(rs.getString(2));
				emp.setHourlyRate(rs.getDouble(3));
				list.add(emp);
			}
			*/
			
		} catch(Exception e) {
			System.out.println("RRHH listEmplyees() Error"+ e.getMessage());
		} finally {
			try {
				DBConnection.getConecction().close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
	}

}

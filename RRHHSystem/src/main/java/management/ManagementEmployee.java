package management;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import interfaces.EmployeeInterface;
import model.Employee;
import utils.DBConnection;

public class ManagementEmployee implements EmployeeInterface {

	@Override
	public Employee register(Employee e)  {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement pst = null;
		try {
			con = DBConnection.getConecction();
			String sql= "insert into employee_tbl values (null, ?, ?, ?) ";
			pst = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			pst.setString(1, e.getFirstName());
			pst.setString(2, e.getLastName());
			pst.setDouble(3, e.getHourlyRate());
			pst.executeUpdate();
		}
		catch(Exception error){
			System.out.println("Error Database: " + error.getMessage());
		}
		
		try (ResultSet generatedKeys = pst.getGeneratedKeys()) {
            if (generatedKeys.next()) {
                e.setEmployeeID(generatedKeys.getInt(1));
            }
        } catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return e;
	}

	@Override
	public Employee getEmployeeById(String id) {
		// TODO Auto-generated method stub
		return null;
	}
	

}

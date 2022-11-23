package mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import interfaces.UsuarioInterface;
import model.Empleado;
import model.User;
import utils.MySQLConexion;

public class GestionUsuarios implements UsuarioInterface {

	@Override
	public int crearUsuario(User user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public User getUser(String email) {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement pst= null;
		User usr = null;
		 try {
			 String sql = "SELECT * FROM user WHERE email = '"+ email+"'";
			 con = MySQLConexion.getConecction();
			 Statement miStatement = con.createStatement();
			 // Ejecutar SQL
			 ResultSet miResultSet = miStatement.executeQuery(sql);
			 // Recorrer result set
			 miResultSet.next();
			 int userId = miResultSet.getInt("id");
			 String userName = miResultSet.getString("name");
			 String userEmail = miResultSet.getString("email");
			 String userPassword = miResultSet.getString("password");

			 usr = new User(userId, userName,userEmail,userPassword);
			 con.close();
			 return usr;
		 }
		 catch(Exception error) {
			 System.out.println(error.getMessage());
		 }
		return null;
	}

}

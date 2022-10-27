package utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class MySQLConexion {
	public static Connection getConecction() {
		Connection con = null;
		   try {
	            // Crear conexion
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            String url="jdbc:mysql://localhost:3306/rrhh_db";
	            String user="root";
	            String password="";
	            con = DriverManager.getConnection(url, user, password);
	        }
	        catch(Exception e) {
	            System.out.println("No se conectó");
	            e.printStackTrace();
	        }
		   return con;
	}

}

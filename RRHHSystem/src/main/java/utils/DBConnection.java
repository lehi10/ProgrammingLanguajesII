package utils;

import java.sql.Connection;
import java.sql.DriverManager;


public class DBConnection {
	
	public static Connection getConecction() {
		Connection con = null;
		   try {
	            // Crear conexion
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            String url="jdbc:mysql://localhost:3306/sesion3db";
	            String user="root";
	            String password="";
	            con = DriverManager.getConnection(url, user, password);
	            /*
	            // Crear objeto statement
	            Statement miStatement = miConexion.createStatement();
	            // Ejecutar SQL
	            ResultSet miResultSet = miStatement.executeQuery("SELECT * FROM `tbl_countries` limit 10;");
	            // Recorrer result set
	            while(miResultSet.next()) {
	                System.out.println(miResultSet.getString("name") +" "+ miResultSet.getString("id"));
	            }
	            */
	        }
	        catch(Exception e) {
	            System.out.println("No se conectó");
	            e.printStackTrace();
	        }
		   return con;
		
	}
}

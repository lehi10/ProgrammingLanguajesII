package servelets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import management.ManagementEmployee;
import management.ManagementRRHH;
import model.Employee;

/**
 * Servlet implementation class RRHHServlet
 */
@WebServlet("/RRHHServlet")
public class RRHHServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RRHHServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		ArrayList<Employee> listOfEmployee = null;
		
		// Proceso
		ManagementRRHH mgntRRHH = new ManagementRRHH(); 
		listOfEmployee = mgntRRHH.listEmployees();
		request.setAttribute("listOfEmployess", listOfEmployee);
		request.getRequestDispatcher("/employees.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}
	
	

}

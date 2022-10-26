package servelets;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import management.ManagementEmployee;
import model.Employee;

/**
 * Servlet implementation class EmployeeServlet
 */
@WebServlet("/EmployeeServlet")
public class EmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// response.getWriter().append("Served GET MODE at: ").append(request.getContextPath());

		
		
		/*
		// Set session attributes
		HttpSession session = request.getSession();
		session.setAttribute("employee", employee);
		
		
		
		Map<String, String> taxRates = new HashMap<String, String>();
		taxRates.put("Arequipa", "0.8");
		taxRates.put("Lima", "0.9");
		taxRates.put("Cusco", "0.6");

		session.setAttribute("taxRates", taxRates);

		
		// Setup destionation
		String url = "/employeePage.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String message = "";
		String url = null;
		// 
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		double hourlyRate = Double.parseDouble(request.getParameter("hourlyRate"));
		Employee employee = new Employee(firstName, lastName, hourlyRate);
		
		// Proceso
		ManagementEmployee managementEmp = new ManagementEmployee();
		managementEmp.register(employee);
		if(employee.getEmployeeID() == 0) {
			message= "Error at register Employee";
			url="index.jsp";
		}
		else {
			message="<script>alert('Employee was registered')</script>";
			url="/employeePage.jsp";
		}
		
		request.setAttribute("message", message);
		request.setAttribute("employee", employee);
		request.getRequestDispatcher(url).forward(request, response);
		
	}

}

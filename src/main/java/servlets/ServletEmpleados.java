package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mantenimiento.GestionEmpleado;
import model.Empleado;

import java.io.IOException;
import java.util.ArrayList;

/**
 * Servlet implementation class ServletEmpleados
 */
@WebServlet(name="emp", urlPatterns={"/emp"})
public class ServletEmpleados extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEmpleados() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String opcion = request.getParameter("opcion");
    	if(opcion == null) opcion = "error";
    	switch(opcion) {
    		case "c": crear(request, response); break;
    		case "s": seleccionar(request, response); break; 
    		case "a": actualizar(request, response); break;
    		case "e": eliminar(request, response); break;
    		case "l": listar(request, response); break;
    		default:
    			response.sendRedirect("error.jsp");
    	}
    }
    
	protected void post(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		crear(request, response);
	}


    private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		GestionEmpleado gEmp= new GestionEmpleado(); 
		ArrayList<Empleado> listaEmp = gEmp.listarEmpleados();
		request.setAttribute("arrayListEmpleados", listaEmp);
		String url = "/listaEmpleados.jsp";
		request.getRequestDispatcher(url).forward(request, response);
	}


	private void crear(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String firstName =  request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		double hourlyRate = Double.parseDouble(request.getParameter("hourlyRate"));
		
		Empleado emp = new Empleado(firstName, lastName, hourlyRate);
		GestionEmpleado gEmp = new GestionEmpleado();
		gEmp.crearEmpleado(emp);
		listar(request, response);
	}
	
	private void actualizar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id =  Integer.parseInt(request.getParameter("id"));
		String firstName =  request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		double hourlyRate = Double.parseDouble(request.getParameter("hourlyRate"));
		
		Empleado empleado = new Empleado(firstName, lastName, hourlyRate);
		empleado.setEmployeeID(id);
		GestionEmpleado gEmp = new GestionEmpleado();
		gEmp.actualizarEmpleado(empleado);
		listar(request, response);
		/*
		request.setAttribute("empleado", emp);
		String url = "/empleado.jsp";
		request.getRequestDispatcher(url).forward(request, response);
		*/
	}
	
	private void eliminar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idEmpleado =  Integer.parseInt(request.getParameter("id"));
		GestionEmpleado gEmp = new GestionEmpleado();
		gEmp.eliminarEmpleado(idEmpleado);
		listar(request, response);
	}

    private void seleccionar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int idEmpleado =  Integer.parseInt(request.getParameter("id"));

    	GestionEmpleado gEmp= new GestionEmpleado(); 
		Empleado empleado = gEmp.getEmpleado(idEmpleado);
		// Empleado tempEmp = new Empleado("Lehi", "Quincho", 123);
		request.setAttribute("empleado", empleado);
		String url = "/formularioEmpleado.jsp";
		request.getRequestDispatcher(url).forward(request, response);
	}
	
	
}

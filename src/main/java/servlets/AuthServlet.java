package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import mantenimiento.GestionUsuarios;
import model.User;
/**
 * Servlet implementation class AuthServlet
 */
public class AuthServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AuthServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String option = (String) request.getParameter("option");
		switch(option) {
			case "logout":
				System.out.println("Sesion antes de invalidar: "+ request.getSession(false));
				request.getSession(false).invalidate();
				System.out.println("Sesion despues de invalidar: "+ request.getSession(false));
				response.sendRedirect("index.jsp");
				break;
			default:
				break;
		}
		  
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		String email = (String) request.getParameter("email");
		String password = (String) request.getParameter("password");

		GestionUsuarios gUsr = new GestionUsuarios();
		// Consulta a DB por el usuario con email 
		User user = gUsr.getUser(email);
		HttpSession mySession = request.getSession();
		String message = "";
		String url = "";
		// response.getWriter().append(user.getPassword());
		
		if(user!=null && user.getPassword().equals(password)) {
			message = "<script>alert('Bienvenido')</script>";
			url="formularioEmpleado.jsp";
		}else {
			message = "<script>alert('Usuario o clave incorrecto')</script>";
			url="index.jsp";
		}
		request.getSession().setAttribute("mensaje", message);
		request.getSession().setAttribute("usuario", user);
		response.sendRedirect(url);
	}

}

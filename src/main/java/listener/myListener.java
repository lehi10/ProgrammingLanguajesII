package listener;

import java.text.SimpleDateFormat;
import java.util.ArrayList;

import jakarta.servlet.annotation.WebListener;
import jakarta.servlet.http.HttpSessionEvent;
import jakarta.servlet.http.HttpSessionListener;
import model.Empleado;

/**
 * Application Lifecycle Listener implementation class myListener
 *
 */
public class myListener implements HttpSessionListener {

    /**
     * Default constructor. 
     */
    public myListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
    public void sessionCreated(HttpSessionEvent se)  { 
    	System.out.println("--------------------------");
    	System.out.println(se.getSession().getId());
    	System.out.println(new SimpleDateFormat().format(se.getSession().getCreationTime()));
    	System.out.println(se.getSession().getMaxInactiveInterval());
         // TODO Auto-generated method stub
    	ArrayList<Empleado> empleados = new ArrayList<Empleado>();
    	double subTotal = 0.0;
    	se.getSession().setAttribute("empleados", empleados );
    	se.getSession().setAttribute("subTotal", subTotal );
    	System.out.println("-------Enviando atributos globales a la sesión-------------------");    	
    }

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    public void sessionDestroyed(HttpSessionEvent se)  { 
         // TODO Auto-generated method stub
    	System.out.println(se.getSession().getId());
    	System.out.println(new SimpleDateFormat().format(se.getSession().getLastAccessedTime()));
    }
	
}

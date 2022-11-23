package listener;

import java.text.SimpleDateFormat;

import jakarta.servlet.annotation.WebListener;
import jakarta.servlet.http.HttpSessionEvent;
import jakarta.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class SessionListener
 *
 */
public class SessionListener implements HttpSessionListener {

    /**
     * Default constructor. 
     */
    public SessionListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
    public void sessionCreated(HttpSessionEvent se)  { 
    	System.out.println("======================");
    	System.out.println(se.getSession().getId());
    	System.out.println(new SimpleDateFormat().format(se.getSession().getCreationTime()));
    	System.out.println(se.getSession().getMaxInactiveInterval());
    	System.out.println("======================");
    	// TODO Auto-generated method stub
    }

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    public void sessionDestroyed(HttpSessionEvent se)  { 
         // TODO Auto-generated method stub
    	System.out.println("======================");
    	System.out.println(se.getSession().getId());
    	System.out.println(new SimpleDateFormat().format(se.getSession().getLastAccessedTime()));
    	System.out.println("======================");
    }
	
}

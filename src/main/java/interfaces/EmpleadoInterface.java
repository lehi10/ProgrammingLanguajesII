package interfaces;
import java.util.ArrayList;
import model.Empleado;

public interface EmpleadoInterface {
	public int crearEmpleado(Empleado emp);
	public ArrayList<Empleado> listarEmpleados();
	public Empleado getEmpleado(int id);
	public boolean eliminarEmpleado(int id);
	public int actualizarEmpleado(Empleado emp);
}

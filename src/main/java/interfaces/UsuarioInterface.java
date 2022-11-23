package interfaces;
import model.User;

public interface UsuarioInterface {
	public int crearUsuario(User user);
	public User getUser(String email);
}

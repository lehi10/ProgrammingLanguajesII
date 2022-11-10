package etiquetas;

import java.io.IOException;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.TagSupport;

public class SimpleTag extends TagSupport{
	private static final long serialVersionUID = 1L;
	
	private String pokemonNumber = "";
	public void setPokemonNumber(String _nombre) {  
	    this.pokemonNumber = _nombre;  
	}  

	public int doStartTag() throws JspException{
		JspWriter out = pageContext.getOut();
		try {
			out.println("<img src='https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/" + pokemonNumber + ".png'>"); 
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SKIP_BODY;
	}
	
	public int doEndTag() throws JspException{
		return EVAL_PAGE;
	}
	
}

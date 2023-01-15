package controler;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.UserDAO;
import model.User;


@WebServlet("/delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private UserDAO acc;
    
    public Delete() {
        
    }

	
	public void init(ServletConfig config) throws ServletException {
		
		acc = new UserDAO();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("codice_cliente"));
		int r = Integer.parseInt(request.getParameter("cod_ruolo"));
		acc.deleteUser(id);
		RequestDispatcher rd;
		if(r == 1 || r == 2) {
		rd = request.getRequestDispatcher("/pannelloCapoufficio/capo-elencoDipendenti/capo-elencoDipendenti.jsp");
		rd.forward(request, response);
		}
		else {
			rd = request.getRequestDispatcher("/pannelloCapoufficio/capo-elencoClienti/capo-elencoClienti.jsp");
			rd.forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

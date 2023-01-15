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


@WebServlet("/Update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private UserDAO acc;   
  
    public Update() {
        super();
        
    }

	
	public void init(ServletConfig config) throws ServletException {
		acc = new UserDAO();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("codice_cliente"));
		String name = request.getParameter("nome");
		String surname = request.getParameter("cognome");
		String tel = request.getParameter("telefono");
		String mail = request.getParameter("email");
		String pass = request.getParameter("password");
		String adress = request.getParameter("indirizzo");
		String country = request.getParameter("citta");
		int cap = Integer.parseInt(request.getParameter("cap_citta"));
		String CF = request.getParameter("codice_fiscale");
		String sex = request.getParameter("sesso");
		int r = Integer.parseInt(request.getParameter("cod_ruolo"));
		RequestDispatcher rd;
		User nuovoUser = new User(id, name, surname, tel, mail, pass, adress, country, cap, CF, sex, r);
		acc.updateUser(id, name, surname, tel, mail, pass, adress, country, cap, CF, sex, r);
		rd = request.getRequestDispatcher("e_dip");
		rd.forward(request, response);
	}

}

package controler;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import data.UserDAO;
import model.User;

@WebServlet("/verifica_account")
public class verifica_account extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<User> utentiloggati;
	RequestDispatcher rd;

    public verifica_account() {
        super();
    }
    
    public void init(ServletConfig config) throws ServletException {
    		utentiloggati = new ArrayList<User>();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mail = request.getParameter("email");
		String pass = request.getParameter("password");
		UserDAO nuovoUser = new UserDAO();
		User user = nuovoUser.selectAccountByUserPass(mail, pass);
		HttpSession session = request.getSession(true);
		System.out.println(session.getId());
		if(user!=null) {
			this.utentiloggati.add(user);
			session.setAttribute("user", user);
			session.setAttribute("id", user.getCodice_cliente());
			session.setAttribute("nome", user.getNome());
			session.setAttribute("cognome", user.getCognome());
			session.setAttribute("ruolo", user.getCod_ruolo());
			rd = request.getRequestDispatcher("landing/jsp/home.jsp");
		}else {
			rd = request.getRequestDispatcher("login/html/Errore.html");
			System.out.println("Errore");
		}
		rd.forward(request, response);
	}

}

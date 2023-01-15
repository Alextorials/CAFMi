package controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.UserDAO;
import model.User;

@WebServlet("/form_registrazione")
public class form_registrazione extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public form_registrazione() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	
	//per maxiim

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("nome");
		String surname = request.getParameter("cognome");
		String mail = request.getParameter("email");
		String tel = request.getParameter("telefono");
		String adress = request.getParameter("indirizzo");
		String country = request.getParameter("citta");
		int cap = Integer.parseInt(request.getParameter("cap_citta"));
		String CF = request.getParameter("cod_fiscale");
		String pass = request.getParameter("password");
		String sex = request.getParameter("sesso");
		int r = 0;
		UserDAO nuovoUser = new UserDAO();
		User user = nuovoUser.selectAccountByUserPass(mail, pass);
		RequestDispatcher rd;
		if(user == null){
			nuovoUser.insertUser(name, surname, tel, mail, pass, adress, country, cap, CF, sex, r);
			user = nuovoUser.selectAccountByUserPass(mail, pass);
			rd = request.getRequestDispatcher("login/html/Successo.html");
			
		}else {
			rd = request.getRequestDispatcher("login/html/Errore.html");
			System.out.println("Errore");
		}
		rd.forward(request, response);
	}

}

package controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import data.UserDAO;
import model.User;

@WebServlet("/recover")
public class recover extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public recover() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mail = request.getParameter("email");
		String cf = request.getParameter("cod_fiscale");
		UserDAO nuovoUser = new UserDAO();
		User user = nuovoUser.passwordRecovery(mail, cf);
		RequestDispatcher rd;
		HttpSession session = request.getSession(true);
		if(user!=null) {
			session.setAttribute("password", user.getPassword());
			rd = request.getRequestDispatcher("/login/jsp/recuperata.jsp");
		}else {
			rd = request.getRequestDispatcher("login/html/Errore.html");
			System.out.println("Errore");
		}
		rd.forward(request, response);
	}

}

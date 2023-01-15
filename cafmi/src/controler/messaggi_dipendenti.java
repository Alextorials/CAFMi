package controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/messaggi_dipendenti")
public class messaggi_dipendenti extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RequestDispatcher rd;

    public messaggi_dipendenti() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		rd = request.getRequestDispatcher("pannelloCapoufficio/capo-vediRichieste/capo-vediRichieste.jsp");
		rd.forward(request, response);
	}

}

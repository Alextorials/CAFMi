package controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lista_timbrature_dir")
public class lista_timbrature_dir extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RequestDispatcher rd;

    public lista_timbrature_dir() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		rd = request.getRequestDispatcher("pannelloCapoufficio/capo-vediPresenze/capo-vediPresenze.jsp");
		rd.forward(request, response);
	}

}

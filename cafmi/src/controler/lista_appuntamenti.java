package controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lista_appuntamenti")
public class lista_appuntamenti extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RequestDispatcher rd;

    public lista_appuntamenti() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		rd = request.getRequestDispatcher("pannelloDipendente/dip-appuntamentiPrenotati/dip-appuntamentiPrenotati.jsp");
		rd.forward(request, response);
	}

}

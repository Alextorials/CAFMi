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

@WebServlet("/view")
public class View extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO acc;

    public View() {
        super();
    }
    public void init() {
    	acc = new UserDAO();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("codice_cliente"));
		User account = acc.selectUser(id);
		RequestDispatcher rd;
		request.setAttribute("cod_cliente", id);
		rd = request.getRequestDispatcher("pannelloCapoufficio/capo-dettaglioUser/capo-dettaglioUser.jsp");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

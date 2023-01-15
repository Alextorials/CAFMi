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

@WebServlet("/view_dip")
public class View_dip extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO acc;

    public View_dip() {
        super();
    }
    public void init() {
    	acc = new UserDAO();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		int id = (int) session.getAttribute("id");
		acc.selectUser(id);
		RequestDispatcher rd;
		request.setAttribute("cod_cliente", id);
		rd = request.getRequestDispatcher("pannelloDipendente/dip-visualizzaDati/dip-visualizzaDati.jsp");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

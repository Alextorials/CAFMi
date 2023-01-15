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
import javax.servlet.http.HttpSession;

import data.UserDAO;
import model.User;


@WebServlet("/update_pass_cli")
public class update_pass_cli extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private UserDAO acc;   
  
    public update_pass_cli() {
        super();
        
    }

	
	public void init(ServletConfig config) throws ServletException {
		acc = new UserDAO();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		int id = (int) session.getAttribute("id");
		String name = request.getParameter("nome");
		String surname = request.getParameter("cognome");
		String tel = request.getParameter("telefono");
		String pass = request.getParameter("password");
		String adress = request.getParameter("indirizzo");
		String country = request.getParameter("citta");
		int cap = Integer.parseInt(request.getParameter("cap_citta"));
		String sex = request.getParameter("sesso");
		RequestDispatcher rd;
		acc.updateCli(id, name, surname, tel, pass, adress, country, cap, sex);
		rd = request.getRequestDispatcher("/landing/jsp/home.jsp");
		rd.forward(request, response);
	}

}

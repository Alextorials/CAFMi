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


@WebServlet("/Update_pass")
public class Update_pass extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private UserDAO acc;   
  
    public Update_pass() {
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
		String pass = request.getParameter("password");
		RequestDispatcher rd;
		acc.updatePass(pass,id);
		rd = request.getRequestDispatcher("/pannelloDipendente/dip-index/dip-index.jsp");
		rd.forward(request, response);
	}

}

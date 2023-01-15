package controler;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import data.UserDAO;


@WebServlet("/up_pass")
public class up_pass extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private UserDAO acc;
   
    public up_pass() {
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
		rd = request.getRequestDispatcher("pannelloDipendente/dip-modificaPassword/dip-modificaPassword.jsp");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

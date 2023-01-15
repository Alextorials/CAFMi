package controler;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.adminJSON;
import model.AdminMSG;

@WebServlet("/admin_message")
public class admin_message extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RequestDispatcher rd;
	AdminMSG admin;
	adminJSON adm;

    public admin_message() {
        super();
    }
    
    public void init(ServletConfig config) throws ServletException {
		adm = new adminJSON();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String arg = request.getParameter("argomento");
		String msg = request.getParameter("messaggio");
		System.out.println(arg+""+msg);
		
		String cartella = "C:\\JSON\\admin_msg\\";
		File nome_file = new File("list_adminMSG.json");
		admin = new AdminMSG(arg,msg);
		adm.aggiungiFile(cartella, nome_file, admin);
		rd = request.getRequestDispatcher("pannelloDipendente/dip-contattaAdmin/successo.jsp");
		rd.forward(request, response);
	}

}

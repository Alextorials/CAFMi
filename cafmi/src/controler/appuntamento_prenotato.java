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
import javax.servlet.http.HttpSession;

import data.appuntamentoJSON;
import data.bufferAppJSON;
import model.Appuntamento;

@WebServlet("/appuntamento_prenotato")
public class appuntamento_prenotato extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RequestDispatcher rd;
	Appuntamento app;
	bufferAppJSON bufferApp ;
 
    public appuntamento_prenotato() {
        super();
    }
    
    public void init(ServletConfig config) throws ServletException {
    		bufferApp = new bufferAppJSON();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("user_name");
		String cognome = request.getParameter("last_name");
		String mail = request.getParameter("user_email");
		String tel = request.getParameter("user_num");
		String appuntamento = request.getParameter("appointment_for");
		String descrizione = request.getParameter("appointment_description");
		String data = request.getParameter("date");
		String orario = request.getParameter("time");
		HttpSession session = request.getSession(true);
		int cliente = (int)session.getAttribute("id");
		
		String cartella = "C:\\JSON\\buffer_appuntamenti\\";
		File nome_file = new File(cliente+"_bufferApp.json");
		app = new Appuntamento(nome,cognome,mail,tel,appuntamento,descrizione,data,orario);
		bufferApp.aggiungiFile(cartella, nome_file, app);
		rd = request.getRequestDispatcher("/servizioappuntamento/jsp/riepilogoappuntamento.jsp");
		rd.forward(request, response);
	}

}

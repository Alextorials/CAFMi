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

import data.appuntamentoJSON;
import data.bufferAppJSON;
import model.Appuntamento;

@WebServlet("/appuntamento_confermato")
public class appuntamento_confermato extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RequestDispatcher rd;
	Appuntamento app;
	appuntamentoJSON appoint ;

    public appuntamento_confermato() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
		appoint = new appuntamentoJSON();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("first_name");
		String cognome = request.getParameter("last_name");
		String mail = request.getParameter("mail");
		String tel = request.getParameter("tel");
		String appuntamento = request.getParameter("appoint");
		String descrizione = request.getParameter("desc");
		String data = request.getParameter("date");
		String orario = request.getParameter("time");
		//System.out.println(appuntamento);
		//System.out.println(descrizione);
		
		String cartella = "C:\\JSON\\list_appuntamenti\\";
		File nome_file = new File("appuntamenti.json");
		app = new Appuntamento(nome,cognome,mail,tel,appuntamento,descrizione,data,orario);
		appoint.aggiungiFile(cartella, nome_file, app);
		System.out.println(app.toString());
		rd = request.getRequestDispatcher("servizioappuntamento/jsp/confermaappuntamento.jsp");
		rd.forward(request, response);
	}

}

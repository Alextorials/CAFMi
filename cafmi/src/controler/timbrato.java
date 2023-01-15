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

import data.bufferAppJSON;
import data.timbraturaJSON;
import model.Appuntamento;
import model.Timbratura;

@WebServlet("/timbrato")
public class timbrato extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RequestDispatcher rd;
	Timbratura timb, timbr;
	timbraturaJSON timbratura;

    public timbrato() {
        super();
    }
    
    public void init(ServletConfig config) throws ServletException {
    		timbratura = new timbraturaJSON();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String data = request.getParameter("date");
		String orario = request.getParameter("time");
		boolean entrata = request.getParameter("entrata") != null;
		boolean uscita = request.getParameter("uscita") != null;
		System.out.println(nome+cognome+data+orario);
		HttpSession session = request.getSession(true);
		int dipendente = (int)session.getAttribute("id");
		
		String cartella = "C:\\JSON\\list_timb_dip\\";
		File nome_file = new File(dipendente+"_timbrature_dip.json");
		if(entrata) {
			uscita = false;
			timb = new Timbratura(nome,cognome,data,orario,entrata,uscita);
		}
		if(uscita) {
			entrata = false;
			timb = new Timbratura(nome,cognome,data,orario,entrata,uscita);
		}
		timbratura.aggiungiFile(cartella, nome_file, timb);
		String cartella_dir = "C:\\JSON\\list_timb_dir\\";
		File nome_file_dir = new File("timbrature_dir.json");
		timbratura.aggiungiFile(cartella_dir, nome_file_dir, timb);
		
		rd = request.getRequestDispatcher("pannelloDipendente/dip-timbra/timbratura-successo.html");
		rd.forward(request, response);
	}

}

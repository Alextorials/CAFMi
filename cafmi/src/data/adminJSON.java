package data;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Reader;
import java.lang.reflect.Type;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import model.AdminMSG;
import model.Appuntamento;

public class adminJSON {
	Gson creafile = new Gson();
	Appuntamento app2 = new Appuntamento();
	String json = "";
	List<AdminMSG> ListaAdmin = new ArrayList<AdminMSG>();
	List<AdminMSG> bufferListaAdmin = new ArrayList<AdminMSG>();
	
	public void aggiungiFile(String cartella, File nomeFile, AdminMSG admin) {

		File file = new File(cartella + nomeFile);
		if (!file.exists()) {
			try {
				file.createNewFile();
				System.out.println("file creato: " + file);
				ListaAdmin.add(admin);
				String jsonString = creafile.toJson(ListaAdmin);
				//System.out.println(jsonString);
				FileWriter newfile = new FileWriter(file);
				newfile.write(jsonString);
				newfile.close();
			} catch (IOException e) {

				e.printStackTrace();
			}
		} else {
			System.out.println("Il file esiste già: " + file);
			FileWriter newfile;
			try {
				Reader reader = Files.newBufferedReader(Paths.get(cartella+nomeFile));
				Type appuntamentoListType = new TypeToken<List<AdminMSG>>(){}.getType();
				bufferListaAdmin = creafile.fromJson(reader, appuntamentoListType);
				//System.out.println(bufferListaApp);
				ListaAdmin.clear();
				ListaAdmin.addAll(bufferListaAdmin);
				System.out.println("NUOVO APPUNTAMENTO PRENOTATO: " + admin);
				ListaAdmin.add(admin);
				String jResult = creafile.toJson(ListaAdmin);
				newfile = new FileWriter(file);
				//System.out.println(jResult);
				newfile.write(jResult);
				newfile.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	public List<AdminMSG> leggiFile(String cartella, File nomeFile) {
		Appuntamento app = new Appuntamento();
		try {
			Reader reader = Files.newBufferedReader(Paths.get(cartella+nomeFile));
			Type appuntamentoListType = new TypeToken<List<AdminMSG>>(){}.getType();
			bufferListaAdmin = creafile.fromJson(reader, appuntamentoListType);
			//System.out.println(app);
			System.out.println("APPUNTAMENTO LETTO: " + app);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return bufferListaAdmin;
	}
}

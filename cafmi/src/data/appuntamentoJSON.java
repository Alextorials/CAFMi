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

import model.Appuntamento;

public class appuntamentoJSON {
	Gson creafile = new Gson();
	Appuntamento app2 = new Appuntamento();
	String json = "";
	List<Appuntamento> ListaApp = new ArrayList<Appuntamento>();
	List<Appuntamento> bufferListaApp = new ArrayList<Appuntamento>();
	
	public File aggiungiFile(String cartella, File nomeFile, Appuntamento app) {

		File file = new File(cartella + nomeFile);
		if (!file.exists()) {
			try {
				file.createNewFile();
				System.out.println("file creato: " + file);
				ListaApp.add(app);
				String jsonString = creafile.toJson(ListaApp);
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
				Type appuntamentoListType = new TypeToken<List<Appuntamento>>(){}.getType();
				bufferListaApp = creafile.fromJson(reader, appuntamentoListType);
				//System.out.println(bufferListaApp);
				ListaApp.clear();
				ListaApp.addAll(bufferListaApp);
				System.out.println("NUOVO APPUNTAMENTO PRENOTATO: " + app);
				ListaApp.add(app);
				String jResult = creafile.toJson(ListaApp);
				newfile = new FileWriter(file);
				//System.out.println(jResult);
				newfile.write(jResult);
				newfile.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return file;
	}
	
	public List<Appuntamento> leggiFile(String cartella, File nomeFile) {
		Appuntamento app = new Appuntamento();
		try {
			Reader reader = Files.newBufferedReader(Paths.get(cartella+nomeFile));
			Type appuntamentoListType = new TypeToken<List<Appuntamento>>(){}.getType();
			bufferListaApp = creafile.fromJson(reader, appuntamentoListType);
			//System.out.println(app);
			System.out.println("APPUNTAMENTO LETTO: " + app);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return bufferListaApp;
	}
}
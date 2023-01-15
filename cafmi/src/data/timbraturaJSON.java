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
import model.Timbratura;

public class timbraturaJSON {
	Gson creafile = new Gson();
	String json = "";
	List<Timbratura> ListaTimbr = new ArrayList<Timbratura>();
	List<Timbratura> bufferListaTimbr = new ArrayList<Timbratura>();
	List<Timbratura> bufferListaTimbr2 = new ArrayList<Timbratura>();
	
	public void aggiungiFile(String cartella, File nomeFile, Timbratura timb) {

		File file = new File(cartella + nomeFile);
		if (!file.exists()) {
			try {
				file.createNewFile();
				System.out.println("file creato: " + file);
				ListaTimbr.clear();
				ListaTimbr.add(timb);
				String jsonString = creafile.toJson(ListaTimbr);
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
				Type appuntamentoListType = new TypeToken<List<Timbratura>>(){}.getType();
				bufferListaTimbr = creafile.fromJson(reader, appuntamentoListType);
				//System.out.println(bufferListaApp);
				ListaTimbr.clear();
				ListaTimbr.addAll(bufferListaTimbr);
				System.out.println("NUOVO TIMBRATURA DIPENDENTE: " + timb);
				ListaTimbr.add(timb);
				String jResult = creafile.toJson(ListaTimbr);
				newfile = new FileWriter(file);
				//System.out.println(jResult);
				newfile.write(jResult);
				newfile.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	public List<Timbratura> leggiLista(String cartella, File nomeFile) {
		try {
			Reader reader = Files.newBufferedReader(Paths.get(cartella+nomeFile));
			Type appuntamentoListType = new TypeToken<List<Timbratura>>(){}.getType();
			bufferListaTimbr2 = creafile.fromJson(reader, appuntamentoListType);
			//System.out.println(bufferListaApp);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return bufferListaTimbr2;
	}
}

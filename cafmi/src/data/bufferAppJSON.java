package data;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Reader;
import java.lang.reflect.Type;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import model.Appuntamento;

public class bufferAppJSON {
	Gson creafile = new Gson();
	String json = "";
	
	public File aggiungiFile(String cartella, File nomeFile, Appuntamento app) {

		File file = new File(cartella + nomeFile);
		if (!file.exists()) {
			try {
				file.createNewFile();
				System.out.println("file creato: " + file);
				String jsonString = creafile.toJson(app);
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
				String jsonString = creafile.toJson(app);
				//System.out.println(jsonString);
				newfile = new FileWriter(file);
				newfile.write(jsonString);
				newfile.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return file;
	}
	
	public Appuntamento leggiFile(String cartella, File nomeFile) {
		Appuntamento app = new Appuntamento();
		try {
			Reader reader = Files.newBufferedReader(Paths.get(cartella+nomeFile));
			app = creafile.fromJson(reader, Appuntamento.class);
			//System.out.println(app);
			System.out.println("APPUNTAMENTO IN ATTESA DI CONFERMA: " + app);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return app;
	}
}
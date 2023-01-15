package model;

public class Timbratura {
	
	private String nome;
	private String cognome;
	private String data;
	private String ora;
	private boolean entrata;
	private boolean uscita;
	
	
	
	public Timbratura() {
		super();
		this.nome = "";
		this.cognome = "";
		this.data = "";
		this.ora = "";
		this.entrata = true;
		this.uscita = true;
	}



	public Timbratura(String nome, String cognome, String data, String ora, boolean entrata, boolean uscita) {
		super();
		this.nome = nome;
		this.cognome = cognome;
		this.data = data;
		this.ora = ora;
		this.entrata = entrata;
		this.uscita = uscita;
	}



	public String getNome() {
		return nome;
	}



	public void setNome(String nome) {
		this.nome = nome;
	}



	public String getCognome() {
		return cognome;
	}



	public void setCognome(String cognome) {
		this.cognome = cognome;
	}



	public String getData() {
		return data;
	}



	public void setData(String data) {
		this.data = data;
	}



	public String getOra() {
		return ora;
	}



	public void setOra(String ora) {
		this.ora = ora;
	}


	public boolean isEntrata() {
		return entrata;
	}



	public void setEntrata(boolean entrata) {
		this.entrata = entrata;
	}



	public boolean isUscita() {
		return uscita;
	}



	public void setUscita(boolean uscita) {
		this.uscita = uscita;
	}



	@Override
	public String toString() {
		return "Timbratura [nome=" + nome + ", cognome=" + cognome + ", data=" + data + ", ora=" + ora + ", entrata="
				+ entrata + ", uscita=" + uscita + "]";
	}
}

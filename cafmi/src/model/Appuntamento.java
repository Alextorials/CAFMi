package model;

public class Appuntamento {
	
	private String nome;
	private String cognome;
	private String email;
	private String numero_telefono;
	private String appuntamento;
	private String descrizione;
	private String data;
	private String ora;
	
	
	
	public Appuntamento() {
		super();
		this.nome = "";
		this.cognome = "";
		this.email = "";
		this.numero_telefono = "";
		this.appuntamento = "";
		this.descrizione = "";
		this.data = "";
		this.ora = "";
	}



	public Appuntamento(String nome, String cognome, String email, String numero_telefono, String appuntamento, String descrizione, String data, String ora) {
		super();
		this.nome = nome;
		this.cognome = cognome;
		this.email = email;
		this.numero_telefono = numero_telefono;
		this.appuntamento = appuntamento;
		this.descrizione = descrizione;
		this.data = data;
		this.ora = ora;
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



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getNumero_telefono() {
		return numero_telefono;
	}



	public void setNumero_telefono(String numero_telefono) {
		this.numero_telefono = numero_telefono;
	}



	public String getAppuntamento() {
		return appuntamento;
	}



	public void setAppuntamento(String appuntamento) {
		this.appuntamento = appuntamento;
	}



	public String getDescrizione() {
		return descrizione;
	}



	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
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



	@Override
	public String toString() {
		return "Appuntamento [nome=" + nome + ", cognome=" + cognome + ", email=" + email + ", numero_telefono="
				+ numero_telefono + ", appuntamento=" + appuntamento + ", descrizione=" + descrizione + ", data=" + data
				+ ", ora=" + ora + "]";
	}
}

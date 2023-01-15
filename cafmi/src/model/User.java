package model;

public class User {
	
	private int codice_cliente;
	private String nome;
	private String cognome;
	private String numero_telefono;
	private String email;
	private String password;
	private String indirizzo;
	private String citta;
	private int cap_citta;
	private String codice_fiscale;
	private String sesso;
	private int cod_ruolo;
	
	
	public User() {
		this.codice_cliente = 0;
		this.nome = "";
		this.cognome = "";
		this.numero_telefono = "";
		this.email = "";
		this.password = "";
		this.indirizzo = "";
		this.citta = "";
		this.cap_citta = 0;
		this.codice_fiscale = "";
		this.sesso = "";
		this.cod_ruolo = 0;
	}
	
	
	public User(String nome, String cognome, String numero_telefono, String email, String password,
			String indirizzo, String citta, int cap_citta, String codice_fiscale, String sesso, int cod_ruolo) {
		this.codice_cliente = 0;
		this.nome = nome;
		this.cognome = cognome;
		this.numero_telefono = numero_telefono;
		this.email = email;
		this.password = password;
		this.indirizzo = indirizzo;
		this.citta = citta;
		this.cap_citta = cap_citta;
		this.codice_fiscale = codice_fiscale;
		this.sesso = sesso;
		this.cod_ruolo = cod_ruolo;
	}
	
	public User(String password) {
		this.password = password;
	}
	
	public User(int codice_cliente, String nome, String cognome, String numero_telefono, String email, String password,
			String indirizzo, String citta, int cap_citta, String codice_fiscale, String sesso, int cod_ruolo) {
		this.codice_cliente = codice_cliente;
		this.nome = nome;
		this.cognome = cognome;
		this.numero_telefono = numero_telefono;
		this.email = email;
		this.password = password;
		this.indirizzo = indirizzo;
		this.citta = citta;
		this.cap_citta = cap_citta;
		this.codice_fiscale = codice_fiscale;
		this.sesso = sesso;
		this.cod_ruolo = cod_ruolo;
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


	public String getNumero_telefono() {
		return numero_telefono;
	}


	public void setNumero_telefono(String numero_telefono) {
		this.numero_telefono = numero_telefono;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getIndirizzo() {
		return indirizzo;
	}


	public void setIndirizzo(String indirizzo) {
		this.indirizzo = indirizzo;
	}


	public String getCitta() {
		return citta;
	}


	public void setCitta(String citta) {
		this.citta = citta;
	}


	public int getCap_citta() {
		return cap_citta;
	}


	public void setCap_citta(int cap_citta) {
		this.cap_citta = cap_citta;
	}


	public String getCodice_fiscale() {
		return codice_fiscale;
	}


	public void setCodice_fiscale(String codice_fiscale) {
		this.codice_fiscale = codice_fiscale;
	}


	public String getSesso() {
		return sesso;
	}


	public void setSesso(String sesso) {
		this.sesso = sesso;
	}


	public int getCod_ruolo() {
		return cod_ruolo;
	}


	public void setCod_ruolo(int cod_ruolo) {
		this.cod_ruolo = cod_ruolo;
	}


	public int getCodice_cliente() {
		return codice_cliente;
	}
	

	
}

package model;

public class Ruolo {
	private int id_ruolo;
	private String posizione;
	
	public Ruolo() {
		this.id_ruolo = 0;
		this.posizione = "";
	}
	
	
	public Ruolo(int id_ruolo, String posizione) {
		this.id_ruolo = id_ruolo;
		this.posizione = posizione;
	}


	public int getId_ruolo() {
		return id_ruolo;
	}


	public void setId_ruolo(int id_ruolo) {
		this.id_ruolo = id_ruolo;
	}


	public String getPosizione() {
		return posizione;
	}


	public void setPosizione(String posizione) {
		this.posizione = posizione;
	}
	
	

}

package data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.cj.jdbc.MysqlDataSource;

public class ConnessioneDB {
	
	private static Connection con = null;
	//parametri di configurazione del DB
	private static final String NOME_DB = "cafmi";
	private static final int PORT = 3306;
	private static final String SERVER_NAME = "localhost";
	//private static final String USERNAME = "Alex_Kevin";
	private static final String USERNAME = "root";
	//private static final String PASSWORD = "Caric@re1998";
	//private static final String PASSWORD = "J4v4DevKing43";
	private static final String PASSWORD = "MaxoneCloudServer!";
	//private static final String PASSWORD = "Wujie95.";

	public static Connection getCon() {
		return con;
	}



	public static void close() throws SQLException {
		try {
			con.close();
			con = null;
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	
	//metodo di connessione al db con i parametri corretti
	public static void connect() throws SQLException {
		try {
			
		
		if (con == null) {

			MysqlDataSource dataSource = new MysqlDataSource();
			dataSource.setDatabaseName(NOME_DB);
			dataSource.setPortNumber(PORT);
			dataSource.setServerName(SERVER_NAME);
			dataSource.setUser(USERNAME);
			dataSource.setPassword(PASSWORD);

			con = dataSource.getConnection();
			System.out.println("Connessione avvenuta con il database : " + con.getCatalog());
		}
		
		}
		catch (SQLException e) {
			e.printStackTrace();

		}

	}
	

}
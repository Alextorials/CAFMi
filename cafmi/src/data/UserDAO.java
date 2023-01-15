package data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.User;

public class UserDAO {
	
	private static final String SELECT_ACCOUNT_USER_PASS = "select *"
			+ " from cafmi.user where ((email=?)and(password=?))";
	private static final String PASSWORD_RECOVERY = "select password"
			+ " from cafmi.user where ((email=?)and(codice_fiscale=?))";
	private static final String INSERT_USERS_SQL = "INSERT INTO cafmi.user" + "  (nome,cognome,numero_telefono,email,password,indirizzo,citta,cap_citta,codice_fiscale,sesso,cod_ruolo) VALUES "
			+ " (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
	private static final String SELECT_ALL_ACCOUNTS = "select * from cafmi.user";
	private static final String SELECT_USER_BY_ID = "select codice_cliente,nome,cognome,numero_telefono,email,password,indirizzo,citta,cap_citta,codice_fiscale,sesso,cod_ruolo from user where codice_cliente =?";
	private static final String UPDATE_ACCOUNTS_SQL = "update cafmi.user set nome=?, cognome=?, numero_telefono=?, email =?, password=?, indirizzo=?, citta=?, cap_citta=?, codice_fiscale=?, sesso=?, cod_ruolo=? where codice_cliente = ?;";
	private static final String UPDATE_CLI_SQL = "update cafmi.user set nome=?, cognome=?, numero_telefono=?, password=?, indirizzo=?, citta=?, cap_citta=?, sesso=? where codice_cliente = ?;";
	private static final String UPDATE_PASS_SQL = "update cafmi.user set password=? where codice_cliente=?;";
	private static final String DELETE_ACCOUNTS_SQL = "delete from cafmi.user where codice_cliente = ?;";
	private static final String SELECT_PASS_BY_EMAIL_AND_CF = "select password from cafmi.user where email = ? and codice_fiscale = ?";
	
	public User selectAccountByUserPass(String email, String pass)
	{
		System.out.println("Metodo invocato selectAccountByUserPass");
		User acc = null;
		try {
			ConnessioneDB.connect();
			Connection connection = ConnessioneDB.getCon();
			PreparedStatement ps = connection.prepareStatement(SELECT_ACCOUNT_USER_PASS);
			ps.setString(1, email);
			ps.setString(2, pass);
			System.out.println(ps);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				int id = rs.getInt("codice_cliente");
				String firstname = rs.getString("nome");
				String lastname = rs.getString("cognome");
				String t_number = rs.getString("numero_telefono");
				String mail = rs.getString("email");
				String password = rs.getString("password");
				String adress = rs.getString("indirizzo");
				String city = rs.getString("citta");
				int cap = rs.getInt("cap_citta");
				String cf = rs.getString("codice_fiscale");
				String sex = rs.getString("sesso");
				int role = rs.getInt("cod_ruolo");
				acc = new User(id,firstname,lastname,t_number,mail,password,adress,city,cap,cf,sex,role);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		closeDAO();
		return acc;
	}
	
	public User passwordRecovery(String email, String cf)
	{
		System.out.println("Metodo invocato Password Recovery");
		User acc = null;
		try {
			ConnessioneDB.connect();
			Connection connection = ConnessioneDB.getCon();
			PreparedStatement ps = connection.prepareStatement(PASSWORD_RECOVERY);
			ps.setString(1, email);
			ps.setString(2, cf);
			System.out.println(ps);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				String password = rs.getString("password");
				acc = new User(password);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		closeDAO();
		return acc;
	}
	
	public void insertUser(String nome, String cognome, String telefono, String email, String password, String indirizzo, String citta, int cap, String cod_f, String sesso, int ruolo) {
		System.out.println("Metodo invocato insertUser");
		System.out.println(INSERT_USERS_SQL);
		try {
			ConnessioneDB.connect();
			Connection connection = ConnessioneDB.getCon();
			PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL);
			preparedStatement.setString(1, nome);
			preparedStatement.setString(2, cognome);
			preparedStatement.setString(3, telefono);
			preparedStatement.setString(4, email);
			preparedStatement.setString(5, password);
			preparedStatement.setString(6, indirizzo);
			preparedStatement.setString(7, citta);
			preparedStatement.setInt(8, cap);
			preparedStatement.setString(9, cod_f);
			preparedStatement.setString(10, sesso);
			preparedStatement.setInt(11, ruolo);
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
			closeDAO();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public List<User> selectAllAccounts() throws SQLException {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<User> accounts = new ArrayList<>();
		// Step 1: Establishing a Connection
		ConnessioneDB.connect();
		Connection connection = ConnessioneDB.getCon();
		// Step 2:Create a statement using connection object
		PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_ACCOUNTS);
		System.out.println(preparedStatement);
		// Step 3: Execute the query or update query
		ResultSet rs = preparedStatement.executeQuery();
		// Step 4: Process the ResultSet object.
		while (rs.next()) 
		{
			int id = rs.getInt("codice_cliente");
			String firstname = rs.getString("nome");
			String lastname = rs.getString("cognome");
			String t_number = rs.getString("numero_telefono");
			String mail = rs.getString("email");
			String password = rs.getString("password");
			String adress = rs.getString("indirizzo");
			String city = rs.getString("citta");
			int cap = rs.getInt("cap_citta");
			String cf = rs.getString("codice_fiscale");
			String sex = rs.getString("sesso");
			int role = rs.getInt("cod_ruolo");
			accounts.add(new User(id,firstname,lastname,t_number,mail,password,adress,city,cap,cf,sex,role));
		}
		closeDAO();
		return accounts;
	}
	
	public User selectUser(int id) {
		User acc = null;
		try {
			// Step 1: Establishing a Connection
			ConnessioneDB.connect();
			Connection connection = ConnessioneDB.getCon();
			// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();
			// Step 4: Process the ResultSet object.
			while(rs.next())
			{
				String firstname = rs.getString("nome");
				String lastname = rs.getString("cognome");
				String t_number = rs.getString("numero_telefono");
				String mail = rs.getString("email");
				String password = rs.getString("password");
				String adress = rs.getString("indirizzo");
				String city = rs.getString("citta");
				int cap = rs.getInt("cap_citta");
				String cf = rs.getString("codice_fiscale");
				String sex = rs.getString("sesso");
				int role = rs.getInt("cod_ruolo");
				acc = new User(id,firstname,lastname,t_number,mail,password,adress,city,cap,cf,sex,role);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		closeDAO();
		return acc;
	}
	
	
	public boolean updateUser(int id,String nome, String cognome, String telefono, String email, String password, String indirizzo, String citta, int cap, String cod_f, String sesso, int ruolo) {
		System.out.println("Metodo invocato updateUser");
		boolean rowUpdated = true;
		try {
			ConnessioneDB.connect();
			Connection connection = ConnessioneDB.getCon();
			PreparedStatement statement = connection.prepareStatement(UPDATE_ACCOUNTS_SQL);
			statement.setString(1, nome);
			statement.setString(2, cognome);
			statement.setString(3, telefono);
			statement.setString(4, email);
			statement.setString(5, password);
			statement.setString(6, indirizzo);
			statement.setString(7, citta);
			statement.setInt(8, cap);
			statement.setString(9, cod_f);
			statement.setString(10, sesso);
			statement.setInt(11, ruolo);
			statement.setInt(12, id);
			System.out.println(statement);

			rowUpdated = statement.executeUpdate() > 0;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		closeDAO();
		return rowUpdated;
	}
	
	public boolean updateCli(int id,String nome, String cognome, String telefono, String password, String indirizzo, String citta, int cap, String sesso) {
		System.out.println("Metodo invocato updateCli");
		boolean rowUpdated = true;
		try {
			ConnessioneDB.connect();
			Connection connection = ConnessioneDB.getCon();
			PreparedStatement statement = connection.prepareStatement(UPDATE_CLI_SQL);
			statement.setString(1, nome);
			statement.setString(2, cognome);
			statement.setString(3, telefono);
			statement.setString(4, password);
			statement.setString(5, indirizzo);
			statement.setString(6, citta);
			statement.setInt(7, cap);
			statement.setString(8, sesso);
			statement.setInt(9, id);
			System.out.println(statement);

			rowUpdated = statement.executeUpdate() > 0;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		closeDAO();
		return rowUpdated;
	}
	
	
	public boolean updatePass(String password, int id) {
		System.out.println("Metodo invocato updatePass");
		boolean rowUpdated = true;
		try {
			ConnessioneDB.connect();
			Connection connection = ConnessioneDB.getCon();
			PreparedStatement statement = connection.prepareStatement(UPDATE_PASS_SQL);
			statement.setString(1, password);
			statement.setInt(2, id);
			System.out.println(statement);

			rowUpdated = statement.executeUpdate() > 0;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		closeDAO();
		return rowUpdated;
	}
	
	public boolean deleteUser(int id) {
		boolean rowDeleted = true;
		try {
			ConnessioneDB.connect();
			Connection connection = ConnessioneDB.getCon();
			PreparedStatement statement = connection.prepareStatement(DELETE_ACCOUNTS_SQL);
			statement.setInt(1, id);
			rowDeleted = statement.executeUpdate() > 0;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rowDeleted;
	}
	
	
	public User searchPasswordByEmail (String email, String pass, String codice_fiscale) {
		
		System.out.println("Metodo invocato searchPasswordByEmail");
		User acc = null;
		try {
			ConnessioneDB.connect();
			Connection connection = ConnessioneDB.getCon();
			PreparedStatement ps = connection.prepareStatement(SELECT_PASS_BY_EMAIL_AND_CF);
			ps.setString(1, email);
			ps.setString(2, pass);
			ps.setString(3, codice_fiscale);
			System.out.println(ps);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				int id = rs.getInt("codice_cliente");
				String firstname = rs.getString("nome");
				String lastname = rs.getString("cognome");
				String t_number = rs.getString("numero_telefono");
				String mail = rs.getString("email");
				String password = rs.getString("password");
				String adress = rs.getString("indirizzo");
				String city = rs.getString("citta");
				int cap = rs.getInt("cap_citta");
				String cf = rs.getString("codice_fiscale");
				String sex = rs.getString("sesso");
				int role = rs.getInt("cod_ruolo");
				acc = new User(id,firstname,lastname,t_number,mail,password,adress,city,cap,cf,sex,role);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		closeDAO();
		return acc;
	}
	
	public static void closeDAO()
	{
		try {
			ConnessioneDB.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}

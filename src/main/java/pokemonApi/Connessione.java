package pokemonApi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connessione {

	// puntamenti db
	final String URL_DB = "jdbc:mysql://localhost:3306/tss_2020";
	final String USER_DB = "root";
	final String PASS_DB = "";

	public Connection getConnessione() {

		// dichiaro interfaccia Connection
		Connection conn = null;

		// caricamento driver
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		// connessione al db
		try {

			conn = DriverManager.getConnection(URL_DB, USER_DB, PASS_DB);

		} catch (SQLException e2) {
			System.out.println("SQLException: " + e2.getMessage());
			System.out.println("SQLState: " + e2.getSQLState());
			System.out.println("VendorError: " + e2.getErrorCode());
			e2.printStackTrace();
		}

		return conn;

	}

}

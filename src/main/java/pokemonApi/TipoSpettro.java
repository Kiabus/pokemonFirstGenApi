package pokemonApi;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSetMetaData;

public class TipoSpettro {

	public static void main(String[] args) {

		// oggetto connessione
		Connessione connessione = new Connessione();

		// dichiarazione Statement e ResultSet, creazione query
		Statement st = null;
		ResultSet rs = null;
		String sql = "SELECT `id`, `nome`, `categoria`, `mossa`, `altezza`, `peso` FROM `pokemon` WHERE `tipo_id`=6";

		try {

			st = connessione.getConnessione().createStatement();//richiamo metodo dell'oggetto Connessione che contiene l'oggetto conn di Connection
			rs = st.executeQuery(sql); // contiene risultati query

		} catch (SQLException e) {
			System.out.println("SQLException: " + e.getMessage());
			System.out.println("SQLState: " + e.getSQLState());
			System.out.println("VendorError: " + e.getErrorCode());
			e.printStackTrace();
		}

		// utilizzo dati del ResultSet
		try {

			// legge i metadati associati alla query
			ResultSetMetaData md = rs.getMetaData();
			int columnsNumber = md.getColumnCount();

			while (rs.next()) {
				
				System.out.println("Tipo Spettro");
				System.out.println();
				for (int i = 1; i <= columnsNumber; i++) {
					System.out.println(md.getColumnName(i) + ": " + rs.getString(i));
				}
				System.out.println("----------------");
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException sqlEx) {
			} // ignore

			rs = null;
		}

		if (st != null) {
			try {
				st.close();
			} catch (SQLException sqlEx) {
			} // ignore

			st = null;
		}

	}

}

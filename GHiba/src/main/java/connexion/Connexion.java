package connexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connexion {

	private static String login = "uqn5zqzmxasp4odv";
	private static String password = "pkoeejia7b8vjv93";
//    private static String url = "jdbc:mysql://localhost/gmachine";
	private static String url = "jdbc:mysql://i8obauya8ad8cdog:oe46qo01adcqujy7@kutnpvrhom7lki7u.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306/ulgfqpmmijv720vi";
	private Connection connection = null;
	private static Connexion instane;

	private Connexion() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(url, login, password);
		} catch (ClassNotFoundException e) {
			System.out.println("Driver introvable");
		} catch (SQLException e) {
			System.out.println("Connexion errror");
			System.out.println(e.getMessage());
		}
	}

	public Connection getConnection() {
		return connection;
	}

	public static Connexion getInstane() {
		if (instane == null) {
			instane = new Connexion();
		}
		return instane;
	}

}

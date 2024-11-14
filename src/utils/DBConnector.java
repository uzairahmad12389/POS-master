package utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnector {

    private static Connection connection = null;

    private DBConnector() {
    }

    public static Connection getConnection() throws Exception {
        if (connection == null) {
            String url = "jdbc:postgresql://localhost:5432/POS";
            String user = "postgres";
            String password = "root";

            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection(url, user, password);
            System.out.println("Postgrese SQL Connected :)");
        }
        return connection;
    }
}

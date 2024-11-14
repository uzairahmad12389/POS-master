package pos;

import java.sql.Connection;
import utils.DBConnector;

public class POS {

    public static void main(String[] args) {

        try {
            Connection conn = DBConnector.getConnection();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}

package net.spring.dao;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionSingleton {

    private static final String HOST = "jdbc:mysql://192.168.10.253/";
    private static final String DBNAME = "billing_record";
    private static final String DRIVER = "com.mysql.jdbc.Driver";
    private static final String USERNAME = "burek";
    private static final String PASSWORD = "burek";
    public static Connection conn;

    public static Connection getInstance() throws SQLException {
        if (conn == null) {
            conn = (Connection) DriverManager.getConnection(HOST + DBNAME, USERNAME, PASSWORD);
        }
        return conn;
    }

}

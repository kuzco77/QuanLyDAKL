/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Th016
 */
public class ConnectionToDatabase {
    private static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    public static final String URL = "jdbc:mysql://localhost:3306/quanlyphancongdakl?useUnicode=true&characterEncoding=UTF-8&useSSL=false";
    public static final String USER = "root";
    private static final String PASSWORD = "namanh77";

    //com.mysql.jdbc.Driver là hằng ko thay đổi
    //khai báo kết nối tới driver

    public static Connection getJDBCConnection() {
        try {
            Class.forName(JDBC_DRIVER);
            return DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static String getPASSWORD() {
        return PASSWORD;
    }
}

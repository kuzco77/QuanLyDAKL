/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import static conn.ConnectionToDatabase.getJDBCConnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author chunamanh
 */
public class ServiceModel {
    static public ResultSet getResultSetFromSQLQuery(String query, String message) throws SQLException {
        System.out.println("Execute query: " + query);
        Connection conn=getJDBCConnection();
        Statement st;
        ResultSet rs = null;
        st=conn.createStatement();
        rs = st.executeQuery(query);
        return rs;
    }
    
    private static DefaultTableModel turnResultSetToTable(ResultSet rs) throws SQLException {
        ResultSetMetaData metaData = rs.getMetaData();

    // names of columns
    Vector<String> columnNames = new Vector<String>();
    int columnCount = metaData.getColumnCount();
    for (int column = 1; column <= columnCount; column++) {
        columnNames.add(metaData.getColumnLabel(column));
    }

    // data of the table
    Vector<Vector<Object>> data = new Vector<Vector<Object>>();
    while (rs.next()) {
        Vector<Object> vector = new Vector<Object>();
        for (int columnIndex = 1; columnIndex <= columnCount; columnIndex++) {
            vector.add(rs.getObject(columnIndex));
        }
        data.add(vector);
    
    }
    
    return new DefaultTableModel(data, columnNames);

    }
    
    public static DefaultTableModel getTableModelFromSQLQuery(String sqlQuery, String message) throws SQLException {
        ResultSet rs = getResultSetFromSQLQuery(sqlQuery, message);
        return turnResultSetToTable(rs);
    }
}

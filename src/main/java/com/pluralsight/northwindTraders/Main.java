package com.pluralsight.northwindTraders;

import org.apache.commons.dbcp2.BasicDataSource;
import java.sql.*;

public class Main {
    public static void main(String[] args) {
        // Setup DataSource
        BasicDataSource dataSource = new BasicDataSource();
        dataSource.setUrl("jdbc:mysql://localhost:3307/northwind");
        dataSource.setUsername("root");
        dataSource.setPassword("password");

        // Query the database now
        String sql = "SELECT ProductName, UnitPrice, UnitsInStock  FROM products";

        try (Connection conn = dataSource.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                String name = rs.getString("ProductName");
                double price = rs.getDouble("UnitPrice");
                int units = rs.getInt("UnitsInStock");
                System.out.printf("%s: $%.2f%n %d ", name, price, units);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
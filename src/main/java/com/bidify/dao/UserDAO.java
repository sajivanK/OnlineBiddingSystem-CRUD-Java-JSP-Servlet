package com.bidify.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.bidify.classes.User;
import java.sql.Date;
import java.sql.DriverManager;

public class UserDAO {
	
	private String jdbcURL = "jdbc:mysql://localhost:3306/Bidify?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "password123";
	
	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			e.printStackTrace();
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return connection;
	}
	
	/*
    private Connection connection;

    // Constructor to initialize connection
    public UserDAO(Connection connection) {
        this.connection = connection;
    } */

    // Insert a new user
    public void insertUser(User user) throws SQLException {
        String sql = "INSERT INTO Users (firstName, lastName, email, password, phoneNumber, dob, gender, streetAddress1, streetAddress2, country, city, region, postalCode) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try (Connection connection = getConnection();
        		PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, user.getFirstName());
            statement.setString(2, user.getLastName());
            statement.setString(3, user.getEmail());
            statement.setString(4, user.getPassword());
            statement.setString(5, user.getPhoneNumber());
            statement.setDate(6, user.getDob());
            statement.setString(7, user.getGender());
            statement.setString(8, user.getStreetAddress1());
            statement.setString(9, user.getStreetAddress2());
            statement.setString(10, user.getCountry());
            statement.setString(11, user.getCity());
            statement.setString(12, user.getRegion());
            statement.setString(13, user.getPostalCode());
            statement.executeUpdate();
        }catch(Exception e){
        	e.printStackTrace();
        }
    }

    // Update an existing user by ID
    public void updateUser(User user) throws SQLException {
        String sql = "UPDATE Users SET firstName = ?, lastName = ?, email = ?, password = ?, phoneNumber = ?, dob = ?, gender = ?, streetAddress1 = ?, streetAddress2 = ?, country = ?, city = ?, region = ?, postalCode = ? WHERE id = ?";
        try (Connection connection = getConnection();
        		PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, user.getFirstName());
            statement.setString(2, user.getLastName());
            statement.setString(3, user.getEmail());
            statement.setString(4, user.getPassword());
            statement.setString(5, user.getPhoneNumber());
            statement.setDate(6, user.getDob());
            statement.setString(7, user.getGender());
            statement.setString(8, user.getStreetAddress1());
            statement.setString(9, user.getStreetAddress2());
            statement.setString(10, user.getCountry());
            statement.setString(11, user.getCity());
            statement.setString(12, user.getRegion());
            statement.setString(13, user.getPostalCode());
            statement.setInt(14, user.getId());
            statement.executeUpdate();
        } catch(Exception e){
        	e.printStackTrace();
        }
    }

    // Delete a user by ID
    public void deleteUser(int userId) throws SQLException {
        String sql = "DELETE FROM Users WHERE id = ?";
        try (Connection connection = getConnection();
        		PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, userId);
            statement.executeUpdate();
        }catch(Exception e){
        	e.printStackTrace();
        }
    }

    // Select a user by ID
    public User selectUserById(int userId) throws SQLException {
        String sql = "SELECT * FROM Users WHERE id = ?";
        try (Connection connection = getConnection();
        		PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, userId);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    return new User(
                        resultSet.getInt("id"),
                        resultSet.getString("firstName"),
                        resultSet.getString("lastName"),
                        resultSet.getString("email"),
                        resultSet.getString("password"),
                        resultSet.getString("phoneNumber"),
                        resultSet.getDate("dob"),
                        resultSet.getString("gender"),
                        resultSet.getString("streetAddress1"),
                        resultSet.getString("streetAddress2"),
                        resultSet.getString("country"),
                        resultSet.getString("city"),
                        resultSet.getString("region"),
                        resultSet.getString("postalCode")
                    );
                }
            }
        }
        return null;
    }

    // Select all users
    public List<User> selectAllUsers() throws SQLException {
        List<User> users = new ArrayList<>();
        String sql = "SELECT * FROM Users";
        try (Connection connection = getConnection();
        		Statement statement = connection.createStatement(); ResultSet resultSet = statement.executeQuery(sql)) {
            while (resultSet.next()) {
                User user = new User(
                    resultSet.getInt("id"),
                    resultSet.getString("firstName"),
                    resultSet.getString("lastName"),
                    resultSet.getString("email"),
                    resultSet.getString("password"),
                    resultSet.getString("phoneNumber"),
                    resultSet.getDate("dob"),
                    resultSet.getString("gender"),
                    resultSet.getString("streetAddress1"),
                    resultSet.getString("streetAddress2"),
                    resultSet.getString("country"),
                    resultSet.getString("city"),
                    resultSet.getString("region"),
                    resultSet.getString("postalCode")
                );
                users.add(user);
            }
        }
        return users;
    }
}

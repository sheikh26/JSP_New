package com.service;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.dto.FileUploadDTO;

public class FileUploadService {

	private String jdbcURL = "jdbc:mysql://localhost:3306/demo?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "root";
	private static final String INSERT_IMAGE_SQL = "INSERT INTO contacts (photo) values (?)";
	private static final String GET_IMAGE_SQL = "select photo from contacts where id =?";
	
	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}
	
	public void UploadImage(FileUploadDTO dto) {
		System.out.println(INSERT_IMAGE_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_IMAGE_SQL)) {
			preparedStatement.setBlob(1, dto.getInputStream());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
}

	public Blob getImage(FileUploadDTO dto) throws SQLException {
		System.out.println(GET_IMAGE_SQL);
		  Blob image = null;
		  ResultSet rs = null;
		  Connection connection = getConnection();
		  PreparedStatement preparedStatement = connection.prepareStatement(GET_IMAGE_SQL);
		  preparedStatement.setInt(1, dto.getId());
		  rs = preparedStatement.executeQuery();
		  if (rs.next()) {
		  image = rs.getBlob(1);
	}
		return image;
}
}

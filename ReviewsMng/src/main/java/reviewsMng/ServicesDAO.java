package reviewsMng;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;



public class ServicesDAO {
	private String jdbcURL = "jdbc:mysql://localhost:3307/projects?useSSL=false";
    private String jdbcusername = "root";
    private String jdbcpassword = "";

    private static final String INSERT_SQL = "INSERT INTO projects.reviews (rating,comment,timestamp, date) VALUES (?,?, ?,?)";
    private static final String SELECT_ALL = "SELECT * FROM reviews";
    private static final String DELETE_SQL = "DELETE FROM reviews WHERE id = ?";
    private static final String UPDATE_SQL = "UPDATE reviews SET rating = ?, comment =?,timestamp =?, date = ? WHERE id = ?";
    private static final String GET_ID_SQL = "SELECT * FROM reviews WHERE id=?";
    		
    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcusername, jdbcpassword);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }
    
    
    
  //insert
    public void insert(Model service) {
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_SQL);
            preparedStatement.setString(1, service.getRating());
            preparedStatement.setString(2, service.getComment());
            preparedStatement.setString(3, service.getTimestamp());
            preparedStatement.setString(4, service.getDate());
    
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    //update
    public void update(Model service) {
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_SQL);
            preparedStatement.setString(1, service.getRating());
            preparedStatement.setString(2, service.getComment());
            preparedStatement.setString(3, service.getTimestamp());
            preparedStatement.setString(4, service.getDate());
           
            preparedStatement.setInt(5, service.getId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
 // Get by id

    public Model get(int id) {
        Model service = null;
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(GET_ID_SQL);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                String rating = resultSet.getString("rating");
                String comment = resultSet.getString("comment");
                String timestamp = resultSet.getString("timestamp");
                String date = resultSet.getString("date");
               
                service = new Model(id, rating,comment,timestamp, date);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return service;
    }



//get all
    public List<Model> getAll() {
        List<Model> profiles = new ArrayList<>();
        try {
            Connection connection = getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT_ALL);
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String rating = resultSet.getString("rating");
                String comment = resultSet.getString("comment");
                String timestamp = resultSet.getString("timestamp");
                String date = resultSet.getString("date");
               
                Model profile = new Model(id, rating,comment,timestamp, date);
                profiles.add(profile);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return profiles;
    }

    //delete
    public void delete(int id) {
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_SQL);
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    
}

package paymentMng;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;



public class ServicesDAO {
	private String jdbcURL = "jdbc:mysql://localhost:3307/projects?useSSL=false";
    private String jdbcusername = "root";
    private String jdbcpassword = "";

    private static final String INSERT_SQL = "INSERT INTO projects.payment (name,address,phone,email, holder,cardnumber,expdate,cvv  ) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    private static final String SELECT_ALL = "SELECT * FROM payment";
    private static final String DELETE_SQL = "DELETE FROM payment WHERE id = ?";
    private static final String UPDATE_SQL = "UPDATE payment SET name = ?, address =?,phone =?, email = ?, holder = ? ,cardnumber =?, expdate =?, cvv =? WHERE id = ?";
    private static final String GET_ID_SQL = "SELECT * FROM payment WHERE id=?";
    		
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
            preparedStatement.setString(1, service.getName());
            preparedStatement.setString(2, service.getAddress());
            preparedStatement.setString(3, service.getPhone());
            preparedStatement.setString(4, service.getEmail());
            preparedStatement.setString(5, service.getHolder());
            preparedStatement.setString(6, service.getCardnumber());
            preparedStatement.setString(7, service.getExpdate());
            preparedStatement.setString(8, service.getCvv());
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
            preparedStatement.setString(1, service.getName());
            preparedStatement.setString(2, service.getAddress());
            preparedStatement.setString(3, service.getPhone());
            preparedStatement.setString(4, service.getEmail());
            preparedStatement.setString(5, service.getHolder());
            preparedStatement.setString(6, service.getCardnumber());
            preparedStatement.setString(7, service.getExpdate());
            preparedStatement.setString(8, service.getCvv());
            preparedStatement.setInt(9, service.getId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
 // get by id

    public Model get(int id) {
        Model service = null;
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(GET_ID_SQL);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                String name = resultSet.getString("name");
                String address = resultSet.getString("address");
                String phone = resultSet.getString("phone");
                String email = resultSet.getString("email");
                String holder = resultSet.getString("holder");
                String cardnumber = resultSet.getString("cardnumber");
                String expdate = resultSet.getString("expdate");
                String cvv = resultSet.getString("cvv");
                service = new Model(id, name,address,phone,email, holder,cardnumber,expdate,cvv);
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
                String name = resultSet.getString("name");
                String address = resultSet.getString("address");
                String phone = resultSet.getString("phone");
                String email = resultSet.getString("email");
                String holder = resultSet.getString("holder");
                String cardnumber = resultSet.getString("cardnumber");
                String expdate = resultSet.getString("expdate");
                String cvv = resultSet.getString("cvv");
                Model profile = new Model(id, name,address,phone,email, holder,cardnumber,expdate,cvv);
                profiles.add(profile);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return profiles;
    }

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

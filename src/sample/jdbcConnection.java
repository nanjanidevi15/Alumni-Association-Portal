package sample;
 
import java.sql.*;

public class jdbcConnection {
	public static Connection con;
	public jdbcConnection() throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.jdbc.Driver");
	    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aap","root","");
	}
	public void setConn(Connection conn)
	{
		jdbcConnection.con = con;
	}
	
	public Connection getCon()
	{
		return jdbcConnection.con;
	}
}

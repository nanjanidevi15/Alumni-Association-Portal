package sample;

import java.sql.*;

public class alumni {
    String username;
    String name;
    String regnumber;
    String company;
    String city;
    String email;
    String contact;
    String password;
    
    public alumni() 
    {
    	
    }
    public alumni(String username,String name,String regnumber,String company,String city,String email,String contact,String password)
    {
    	this.username=username;
    	this.name=name;
    	this.regnumber=regnumber;
    	this.company=company;
    	this.city=city;
    	this.email=email;
    	this.contact=contact;
    	this.password=password;
    }
    public String getUsername()
    {
    	return this.username;
    }
    public String getName()
    {
    	return this.name;
    }
    public String getRegnumber()
    {
    	return this.regnumber;
    }
    public String getCompany()
    {
    	return this.company;
    }
    public String getCity()
    {
    	return this.city;
    } 
    public String getEmail()
    {
    	return this.email;
    }
    public String getContact()
    {
    	return this.contact;
    }
    public String getPassword()
    {
    	return this.password;
    }
    public void signUp(alumni a)
    {
    	try {
       		Class.forName("com.mysql.jdbc.Driver");
    	    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aap","root","");
    		Statement st=con.createStatement();
    		st.executeUpdate("create table if not exists alumni(username varchar(20),name varchar(20),regnumber varchar(10),company varchar(30),city varchar(20),email varchar(20),contact varchar(10),password varchar(20))");
    		st.close();
    		
    		PreparedStatement pst=con.prepareStatement("insert into alumni values (?,?,?,?,?,?,?,?)");
    		pst.setString(1,a.getUsername());
    		pst.setString(2,a.getName());
    		pst.setString(3,a.getRegnumber());
    		pst.setString(4,a.getCompany());
    		pst.setString(5,a.getCity());
    		pst.setString(6,a.getEmail());
    		pst.setString(7,a.getContact());
    		pst.setString(8,a.getPassword());
    		
    		pst.executeUpdate();
    	}
    	catch(Exception e)
    	{
    		System.out.println(e);
    	}
    }
}

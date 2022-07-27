<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String un = request.getParameter("Username");
String pw = request.getParameter("Password");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "pl1";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>

<html>

    <head>

        <title>Sending Mail Through JSP</title>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta name="viewport" content="width=device-width">

    </head>

    <body bgcolor="khaki">

        <form action="mailJSP.jsp">
<right>
            <table>

                <tr><td><b><font color="red">To:

                    </td>

                    <td><b><b><input type="text" name="mail" value=""/><br/>

                    </td>

                </tr>

                <tr>

                    <td>

                        <b><font color="red">Subject:

                    </td>

                    <td>

                        <input type="text" name="sub" value=""><br/>

                    </td>

                </tr>

                <tr>

                    <td>

                        <b><font color="red">Message Text:

                    </td>

                    <td>

                        <textarea rows="12" cols="80" name="mess"></textarea><br/>

                    </td>

                </tr>

                <tr>

                    <td>

                        <input type="submit" value="Send">

                    </td>

                    <td>

                        <input type="reset" value="Reset">

                    </td>

                </tr>

                   
</right>
</table>
<left>
<h1>student details</h1>
<table border="1">
<tr>
<td>roll</td>
<td>branch</td>
<td>cgpa</td>
<td>email</td>


</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from detail";
ResultSet K = statement.executeQuery(sql);
while(K.next()){
%>
<tr>
<td><%=K.getString(1) %></td>
<td><%=K.getString(2) %></td>
<td><%=K.getString(3) %></td>
<td><%=K.getString(4) %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</left>
</form>
</body>
</html>

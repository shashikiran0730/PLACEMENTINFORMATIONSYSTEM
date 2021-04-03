<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String delemail = request.getParameter("email");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "project";
String userid = "root";
String password = "@9848396526At";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
<body>
<%
try{
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/project" ,"root", "391957861537");
statement=connection.createStatement();
String sql ="select * from applications where  Email_Id like '"+delemail+"';";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<%=resultSet.getString("StudentName") %></td>
<%=resultSet.getString("mobileno") %></td>
<%=resultSet.getString("email_id") %></td>
<%=resultSet.getString("aadharno") %></td>
<%=resultSet.getString("dob") %></td>
<%=resultSet.getString("address") %></td>
<%=resultSet.getString("branch") %></td>
<%=resultSet.getString("cgpa") %></td>
<%=resultSet.getString("certificatelink") %></td>
<%=resultSet.getString("degree") %></td>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>

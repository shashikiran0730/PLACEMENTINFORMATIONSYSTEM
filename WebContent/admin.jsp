<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="qwerty.user" %>
<%@ page import="java.util.ArrayList" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style type="text/css">

 table{
 width:	100%;
 font-size:20px;
 }
 tr{
 width:200px;
 align:left;
 }
 td{
   text-align:center;
 }
 button{
 float:right;
 }
</style>
<button> <a href="index.jsp">LOGOUT</a></button>
<body>
<h1>APPROVED STUDENTS</h1>
<table>
<table border="1" align="center">
<tr>
  <td>Name</td>
  <td>Email</td>
  <td>Branch</td>
  <td>Degree</td>
  <td>CGPA</td>
  <td>Link</td>
</tr>

<%
ArrayList<user> al =(ArrayList<user>)request.getAttribute("users");
for(user u :al )
{ 
	%>
	<tr >
<td><%=u.getName()%></a></td>
<td><%= u.getEmail1() %></td>
	<td><%=u.getBranch() %></td>
	<td><%=u.getDegree() %></td>
	<td><%=u.getCgpa() %></td>
	<td><%= u.getLink() %></td>
	</tr>
<%
}
%>
</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="qwerty.user" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
</head>
<body>

<button> <a href="index.jsp">LOGOUT</a></button>
<ul>
<h1>PG ABOVE 9 CGPA</h1>
<li>
<div class="tb1">
<table border="1" align="center">
<tr><td colspan="5">Above 9.0</td></tr>
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
	if(Float.parseFloat(u.getCgpa())>=9.0 && u.getDegree().equals("PG")){
	%>
	<tr >
<td> <a href="placementofficer.jsp"><%=u.getName()%></a></td>
<td><%= u.getEmail1() %>></td>
	<td><%=u.getBranch() %></td>
	<td><%=u.getDegree() %></td>
	<td><%=u.getCgpa() %></td>
	<td><%= u.getLink() %></td>
	</tr>
	
<%
	}
}
%>
</table>
</div>
<div class="tb2">
<table border="1" align="center">
<tr><td colspan="5">Above 9.0</td></tr>
<tr>
<h1>PG below 9 CGPA</h1>
<div class="col">
  <td>Name</td>
 <td>Email</td>
  <td>Branch</td>
  <td>Degree</td>
  <td>CGPA</td>
  <td>Link</td>
</tr>

<%
for(user u :al )
{
	if(Float.parseFloat(u.getCgpa())<9.0 && u.getDegree().equals("PG")){
	%>
	<tr >
	<td> <a href="placementofficer.jsp"><%=u.getName()%></a></td>
	<td><%=u.getEmail1() %></td>
	<td><%=u.getBranch() %></td>
	<td><%=u.getDegree() %></td>
	<td><%=u.getCgpa() %></td>
	<td><%= u.getLink() %></td>
	</tr>
	
<%
	}
}
%>
</table>
</div>
</div>
</li>
<h1>UG ABOVE 9 CGPA</h1>
<li>
<div>
<div class="tb3">
<table border="1" align="center">
<tr><td colspan="5">Above 9.0</td></tr>
<tr>
  <td>Name</td>
  <td>Email</td>
  <td>Branch</td>
  <td>Degree</td>
  <td>CGPA</td>
  <td>Link</td>
</tr>
<%
for(user u :al )
{
	if(Float.parseFloat(u.getCgpa())>=9.0 && u.getDegree().equals("UG")){
	%>
	<tr >
	 <td> <a href="placementofficer.jsp"><%=u.getName()%></a></td>
	 <td><%=u.getEmail1()%></td>
	<td><%=u.getBranch() %></td>
	<td><%=u.getDegree() %></td>
	<td><%=u.getCgpa() %></td>
	<td><%= u.getLink() %></td>
	</tr>
	
<%
	}
}
%>
</table>
</div>

<div class="tb4">
<table border="1" align="center">
<h1>UG Below 9 CGPA</h1>
<tr><td colspan="5">Above 9.0</td></tr>
<tr>
<div class="col">
  <td>Name</td>
  <td>Email</td>
  <td>Branch</td>
  <td>Degree</td>
  <td>CGPA</td>
  <td>Link</td>
</tr>

<%
for(user u :al )
{
	if(Float.parseFloat(u.getCgpa())<9.0 && u.getDegree().equals("UG")){
	%>
	<tr >
	 <td> <a href="placementofficer.jsp"><%=u.getName()%></a></td>
	<td><%=u.getBranch() %></td>
	<td><%=u.getEmail1() %></td>
	<td><%=u.getDegree() %></td>
	<td><%=u.getCgpa() %></td>
	<td><%= u.getLink() %></td>
	</tr>
	
<%
	}
}
%>
</table>
</div>
</li>
</ul>
</body>
</html>
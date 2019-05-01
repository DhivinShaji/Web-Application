<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
<%
try{  
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection(  
	"jdbc:mysql://localhost:3306/task","root","root");  
	
	
	HttpSession sess = request.getSession(false); 
	Statement stmt=con.createStatement();  
	String un=(String)sess.getAttribute("username");

	
	ResultSet rs= stmt.executeQuery("Select * from transactions where Froms = '"+un+"' ;");
	if (rs.next())
	{	%>
	<table style border='1' padding='10'>
	<tr>
	<td>	
	<h3>Transaction ID
	</td>
	<td>
	Sender
	</td>
	<td>
	Reciever
	</td>
	<td>
	Sent on
	</td>
	<td>
	Received on
	</td>
	<td>
	Status
	</td>
	<td>
	Source
	</td>
	<td>
	Destination 
	</td>
	</tr></h3>
	<%rs.previous();}
	else
	{%>
		<h1>No Previous Transactions</h1>
	<%}
	while(rs.next())
	{
		%>
		
		<tr>
		<td>	
		<%out.println(rs.getString(1));%>
		
		</td>
		<td>
		<%out.println(rs.getString(2));%>
		</td>
		<td>
		<%out.println(rs.getString(3));%>
		</td>
		<td>
		<%out.println(rs.getString(4));%>
		</td>
		<td>
		<%out.println(rs.getString(5));%>
		</td>
		<td>
		<%if(rs.getString(6).equals("1"))
		{%>
			DELIVERED
		<%}
		else{%>
		PENDING
		<% } %>
		
		</td>
		<td>
		<%out.println(rs.getString(11));%>
		</td>
		<td>
		<%out.println(rs.getString(12));%>
		</td>
		</tr>
	<% }%>
	
	</table>
	<div >
	<tr>
	<form action='track.jsp' method='post' >
	<td>ENTER TID:  
	<input type='text' name='check1' value=''/>
	</td>
	<td>
	<input type='submit' name='check' value='TRACK'/>
	</form>
	<form action='utran.jsp' method='post'>
	<input type='submit' value='BACK' id='but' >
						
						</form>
	</td>
	</tr>
	</div>

<%	con.close();  
}catch(Exception e){ System.out.println(e);}  %>

</body>
</html>
<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Role Assignment</title>

</head>
<body>
<table style border='1' padding='10' id="tab1">
			<tr>
				<td>Username</td>
				<td>Admin</td>
				<td>Transaction Manager</td>
				
			</tr>
<%
try{  
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection(  
	"jdbc:mysql://localhost:3306/task","root","root");  
	 String un=request.getParameter("username");
	 String pwd=request.getParameter("password");
	 //String enc=Bcrypt.hashpw(pwd,Bcrypt.gensalt());
	
	 String mail=request.getParameter("mail");
	Statement stmt=con.createStatement();  
	
	
	ResultSet rs1=stmt.executeQuery("Select * from users where userp = '"+1+"' and SAP <> '"+1+"';");
	out.println("<form action='SuRoleController' method='post'>");
	while(rs1.next())
	{
		out.println("<tr>");
		out.println("<td>");		
		out.println(rs1.getString("username"));
		out.println("</td>");
		if(rs1.getString(5).equals("0"))
		{
			out.println("<td>");
			out.println("<input type='checkbox' name='admin'  value='");
			out.println(rs1.getString("id"));
			out.println("' />");
			out.println("</td>");
		}
		else
		{
			
		
		out.println("<td>");
		out.println("<input type='checkbox' name='admin' checked value='");
		out.println(rs1.getString("id"));
		out.println("' />");
		out.println("</td>");
		}
		if(rs1.getString(6).equals("0"))
		{
		out.println("<td>");
		out.println("<input type='checkbox' name='tranman' value='");
		out.println(rs1.getString("id"));
		out.println("' />");
		out.println("</td>");
		}
		else
		{
			out.println("<td>");
			out.println("<input type='checkbox' name='tranman' checked value='");
			out.println(rs1.getString("id"));
			out.println("' />");
			out.println("</td>");
		}
        out.println("</tr>");
	}
	
	
	
	
	con.close();  
}catch(Exception e){ System.out.println(e);}  

%>

<input type='submit' value='Update'/></form>
<form action='biggpage.jsp' method='post'>
<input type='submit' value='Back'/></form>

</body>
</html>
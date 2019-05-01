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
	
	
	String receiver=request.getParameter("rec");
	String source=request.getParameter("source");
	String dest=request.getParameter("dest");
	sess.setAttribute("sour", source);
	sess.setAttribute("des",dest);
	int h = stmt.executeUpdate("insert into transactions values(null,'"+un+"','"+receiver+"',NOW(),null,'"+0+"','"+0+"','"+0+"','"+0+"','"+0+"','"+source+"','"+dest+"');");

	

	con.close();  
}catch(Exception e){ System.out.println(e);}  
%>
<h1>Transaction Initiated<h1>
<a href='/RedDart/mytran.jsp'>Track order</a>
</body>
</html>
<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Manage Transactions</title>
</head>
<body>
<%
try{  
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection(  
	"jdbc:mysql://localhost:3306/task","root","root");  
	
	Statement stmt=con.createStatement();  
	ResultSet rs;
		rs = stmt.executeQuery("select * from transactions where status='"+0+"';");
		if(rs.next())
		{
			rs.previous();
		
			out.println("<table style border='1' padding='10' id=\"tab1\" >");
			out.println("<tr>");
			out.println("<td>");
			out.println("<h3>");
			out.println("SENDER");
			out.println("</td>");
			out.println("<td>");
		
			out.println("HUB 1");
			out.println("</td>");
			out.println("<td>");
	
			out.println("HUB 2");
			out.println("</td>");
			out.println("<td>");
	
			out.println("HUB 3");
			out.println("</td>");
			out.println("<td>");
	
			out.println("HUB 4");
			out.println("</td>");
			
			
			out.println("</tr>");
			/*out.println("<\td>");
			out.println("<td>");
		
			out.println("SENDER");
			out.println("<\td>");
			
		 	out.println("<html>");
			out.println("<html>");
			out.println("<html>");
			out.println("<html>");*/
			
		
		
		}
		else{
			
			out.println("NO MORE TRANSACTONS LEFT");
			out.println("<form action='tmr.jsp' method='post'>");
			out.println("<input type='submit' value='BACK'/>");
			out.println("</form>");
			
			
		}
		out.println("<form action='tmcontroller' method='post'>");
			while(rs.next())
			{
				//first user
				out.println("<tr>");
				out.println("<td>");
				out.println(rs.getString("Froms"));
				out.println("</td>");
				
				// first user hub1
				out.println("<td>");
				
				if(rs.getString("h1").equals("1")){
					out.println("<input type=\"checkbox\" name='hub1' checked onclick=\"return false;\" value='");
					out.println(rs.getString("TID"));
					out.println("'/>");
					
				}
				else{
				out.println("<input type=\"checkbox\" name='hub1' value='");
				out.println(rs.getString("TID"));
				out.println("'/>");}
				out.println("</td>");
				
				// first user hub2
				out.println("<td>");
				//hub1 ticked or not
				if(rs.getString("h1").equals("0"))
				{
					out.println("<input type=\"checkbox\" name='hub2' disabled value='");
					out.println(rs.getString("TID"));
					out.println("'/>");
				
					
				}
				else {//if hub1 is 1 then hub 2 can either be checked or unchecked
					if(rs.getString("h2").equals("1"))
					{//hub 2 is also checked
					out.println("<input type=\"checkbox\" name='hub2' checked onclick=\"return false;\"  value='");
					out.println(rs.getString("TID"));
					out.println("'/>");
				
				     }
				
				 else{//hub 2  is not checked
					
				out.println("<input type=\"checkbox\" name='hub2' value='");
				out.println(rs.getString("TID"));
				out.println("'/>");
				     }
			}
				//hub3
				out.println("</td>");
				out.println("<td>");
				//hub2=0 then hub 3 disabled
				if(rs.getString("h2").equals("0"))
				{
					out.println("<input type=\"checkbox\" name='hub3' disabled value='");
					out.println(rs.getString("TID"));
					out.println("'/>");

				}
				
				else { //if hub2=1 then hub3 
					if((rs.getString("h3").equals("1")))
					{
					out.println("<input type=\"checkbox\" checked onclick=\"return false;\" name='hub3' value='");
					out.println(rs.getString("TID"));
					out.println("'/>");

				
				}
				  else{
				out.println("<input type=\"checkbox\" name='hub3' value='");
				out.println(rs.getString("TID"));
				out.println("'/>");	
				}
			}				
				out.println("</td>");
				
				//hub4
				out.println("<td>");
				//hub1 2 3 check or not
				if(rs.getString("h3").equals("0"))
				{
					out.println("<input type=\"checkbox\" name='hub4' disabled value='");
					out.println(rs.getString("TID"));
					out.println("'/>");
				}
				else{ 
					if(rs.getString("h4").equals("1"))
				{out.println("<input type=\"checkbox\" checked onclick=\"return false;\" name='hub4' value='");
				out.println(rs.getString("TID"));
				out.println("'/>");		
									}
				else{
				out.println("<input type=\"checkbox\" name='hub4' value='");
				out.println(rs.getString("TID"));
				out.println("'/>");}}					
				out.println("</td>");
				out.println("</tr>");
				
				
			}
			out.println("</table>");
			out.println("<br>");
			




	con.close();  
}catch(Exception e){ System.out.println(e);} 
%>
<div id='b1'>
			<input type='submit' value='UPDATE'>
			</div>
			</form>
			<form action='tmr.jsp' method='post'>
			
			<input type='submit' value='DONE'/>
			</form>
			</body>
			</html>
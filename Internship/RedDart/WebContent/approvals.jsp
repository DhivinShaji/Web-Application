<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
 <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<title>Role Assignment</title>
</head>
<body>
<style>
body{
background-color:#203047;
}
    	.row{
		    margin-top:40px;
		    padding: 0 10px;
		}
		.clickable{
		    cursor: pointer;   
		}

		.panel-heading div {
			margin-top: -18px;
			font-size: 15px;
		}
		.panel-heading div span{
			margin-left:5px;
		}
		.panel-body{
			display: none;
		}

</style>

				<div class="container">
   
    	<div class="row">
			<div class="col-xl p-3 mb-2 bg-info text-white">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Approvals</h3>
				</div>
			
				
					
					<%try{  
						Class.forName("com.mysql.jdbc.Driver");  
						Connection con=DriverManager.getConnection(  
						"jdbc:mysql://localhost:3306/task","root","root");  
						 String un=request.getParameter("username");
						 String pwd=request.getParameter("password");
						 //String enc=Bcrypt.hashpw(pwd,Bcrypt.gensalt());
						
						 String mail=request.getParameter("mail");
						Statement stmt=con.createStatement();  
						//ResultSet rs;
						
						ResultSet rs=stmt.executeQuery("Select * from users where  SAP <> '"+1+"' and adminp <>'"+1+"' and tmp <> '"+1+"';");
							%>
					<table class="table table-hover" id="dev-table">
						<thead>
							<tr>
								<th>Username</th>
								<th>Approve</th>
							
							</tr>
						</thead>
						<%
	
						out.println("<form action='approvecontroller' method='post'>");
						while(rs.next())
						{%>
<tbody>
<%
		
		out.println("<tr>");
		out.println("<td>");		
		out.println(rs.getString("username"));
		out.println("</td>");
		if(rs.getString(7).equals("0"))
		{
			out.println("<td>");
			out.println("<input type='checkbox' name='userp' value='");
			out.println(rs.getString("id"));
			out.println("' />");
			out.println("</td>");
		}
		else
		{
out.println("<td>");
		out.println("<input type='checkbox' name='userp' checked value='");
		out.println(rs.getString("id"));
		out.println("' />");
		out.println("</td>");
		}
	
        out.println("</tr>");
	}
	
	
	con.close();  
}catch(Exception e){ System.out.println(e);}  

%></tbody>
</table>
</div>
</div>
</div>
</div>



<input type='submit' class="btn btn-outline-info" value='Update' style="margin-left:45%; margin-bottom:3%;"/></form>
<form action='biggest.jsp'  method='post'>
<input type='submit' class="btn btn-outline-info" value='Back' style="margin-left:45.5%; "/></form>						
</body>
</html>
			
			
	
			
			
			
			

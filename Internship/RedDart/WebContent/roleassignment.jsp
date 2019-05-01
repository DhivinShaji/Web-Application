<%@ page import="java.sql.*" %>
    <!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

    <title>role assignment</title>
  </head>
  <body>
   

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
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
						<h3 class="panel-title">Role Assignment</h3>
				</div>
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
	
	
	ResultSet rs1=stmt.executeQuery("Select * from users where userp = '"+1+"' ;");
	out.println("<form action='SuRoleController' method='post'>");
	%>
	<table class="table table-hover" id="dev-table">
	<thead>
		<tr>
			<th>Username</th>
			<th>Admin</th>
		<th>Transaction Manager</th>
		</tr>
	</thead>
	<%
	
	while(rs1.next())
	{%>
	<tbody>
	<%
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
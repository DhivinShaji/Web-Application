<%@ page import="java.sql.*" %><!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

    <title>Hub </title>
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
						<h3 class="panel-title">Manage Tracking</h3>
				</div>
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
		
			%>
			<table class="table table-hover" id="dev-table">
		<thead>
			<tr>
				<th>Sender</th>
				<th>Hub1</th>
			<th>Hub2</th>
			<th>Hub3</th>
			<th>Hub4</th>
			</tr>
		</thead><%
		
		
		}
		else{
			
			out.println("NO MORE TRANSACTONS LEFT");
			
			
			
		}
		out.println("<form action='tmcontroller' method='post'>");
		%>
		<tbody>
		<%
		
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
 
				</tbody>
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
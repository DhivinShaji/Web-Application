package com.red;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class tmcontroller
 */
@WebServlet("/tmcontroller")
public class tmcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public tmcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/task","root","root");  
		
			Statement stmt=con.createStatement();  
			ResultSet rs;
			PrintWriter out=response.getWriter();
			String h1[]=request.getParameterValues("hub1");
		
			if(h1!=null){
				
			for(int i=0;i<h1.length;i++)
			{
				
				
					String query = "update task.transactions set h1=1 where TID="+h1[i]+";";
				 int set=stmt.executeUpdate(query);
				
				
				
				
				
			}}
			
			
			String h2[]=request.getParameterValues("hub2");
			out.println("assdf");
			if(h2!=null){
				out.println("assdf");
			for(int i=0;i<h2.length;i++)
			{
				
				
				String query = "update task.transactions set h2=1 where TID="+h2[i]+";";
				 int set=stmt.executeUpdate(query);
				
				
				
				
				
			}}
			String h3[]=request.getParameterValues("hub3");
			out.println("assdf");
			if(h3!=null){
				out.println("assdf");
			for(int i=0;i<h3.length;i++)
			{
				
				
				String query = "update task.transactions set h3=1 where TID="+h3[i]+";";
				 int set=stmt.executeUpdate(query);
				
				
				
				
				
			}}
			
			
			String h4[]=request.getParameterValues("hub4");
			if(h4!=null){
			for(int i=0;i<h4.length;i++)
			{
				
				
				String query = "update task.transactions set h4=1 where TID="+h4[i]+";";
				 int set=stmt.executeUpdate(query);
				 String query1 = "update task.transactions set status=1 where TID="+h4[i]+";";
				 int set1=stmt.executeUpdate(query1);
				 String query2 = "update task.transactions set Received=NOW() where TID="+h4[i]+";";
				 int set2=stmt.executeUpdate(query2);
				
				
				
				
			}}
			
			getServletContext().getRequestDispatcher("/hub.jsp").forward(request, response);
			
			
			con.close();  
			}catch(Exception e){ System.out.println(e);}  
	}

}

package com.red;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class approvecontroller
 */
@WebServlet("/approvecontroller")
public class approvecontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public approvecontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/task","root","root");  
			Statement stmt=con.createStatement(); 
		
				String query0 = "update users set userp=0 where  SAP <> '"+1+"' and adminp <>'"+1+"' and tmp <> '"+1+"';";
				 int set0=stmt.executeUpdate(query0);
				
		
			
		
	        String userp[]=request.getParameterValues("userp");
	       
	     
			if(userp!=null)
			{
			for(int i=0;i<userp.length;i++)
			{
			
				
					String query = "update users set userp=1 where id="+userp[i]+";";
				 int set=stmt.executeUpdate(query);
				
            }
			
			
			}
			
			getServletContext().getRequestDispatcher("/approvals.jsp").forward(request, response);
	
			con.close();  
		}catch(Exception e){ System.out.println(e);}  
	}	}


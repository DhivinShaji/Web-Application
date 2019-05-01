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
 * Servlet implementation class SuRoleController
 */
@WebServlet("/SuRoleController")
public class SuRoleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SuRoleController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/task","root","root");  
			Statement stmt=con.createStatement(); 
		
				String query0 = "update users set adminp=0, tmp=0;";
				 int set0=stmt.executeUpdate(query0);
				
		
			
		
	        String admin[]=request.getParameterValues("admin");
	       
	     
			if(admin!=null)
			{
			for(int i=0;i<admin.length;i++)
			{
			
				
					String query = "update users set adminp=1 where id="+admin[i]+";";
				 int set=stmt.executeUpdate(query);
				
            }
			
			
			}
			String tranman[]=request.getParameterValues("tranman");
			if(tranman!=null){
			for(int i=0;i<tranman.length;i++)
			{
				
				
					String query1 = "update users set tmp=1 where id="+tranman[i]+";";
				 int set1=stmt.executeUpdate(query1);
                  } }
			getServletContext().getRequestDispatcher("/roleassignment.jsp").forward(request, response);
	
			con.close();  
		}catch(Exception e){ System.out.println(e);}  
	}

}

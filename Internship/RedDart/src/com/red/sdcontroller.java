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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class sdcontroller
 */
@WebServlet("/sdcontroller")
public class sdcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sdcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/task","root","root");  
			PrintWriter out=response.getWriter(); 
			
			HttpSession sess = request.getSession(false); 
            Statement stmt=con.createStatement();  
			
		  String un=(String)sess.getAttribute("username");
		
			
		String receiver=(String)request.getParameter("rec");
		
			String source=(String)request.getParameter("source");
			String dest=(String)request.getParameter("destination");
			sess.setAttribute("sour", source);
			sess.setAttribute("des",dest);
			int h = stmt.executeUpdate("insert into transactions values(null,'"+un+"','"+receiver+"',NOW(),null,'"+0+"','"+0+"','"+0+"','"+0+"','"+0+"','"+source+"','"+dest+"');");
			out.println("<html>");
			out.println("<style>body{ background-color:#203047;}</style>");
			out.println("<body >");
			out.println("<h1 style='color:white; margin-left:35%;'>Transaction Initiated<h1>");
			
out.println("<a href=\"biggest.jsp\"  style='color:white; margin-left:35%;'>Click here to go back to Dashboard</a>");	
			
			con.close();  
		}catch(Exception e){ System.out.println(e);}  
	
	}

}

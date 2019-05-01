package com.red;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{ PrintWriter out=response.getWriter(); 
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/task","root","root");  
			 String un=request.getParameter("username");
			 String pwd=request.getParameter("password");
			 String enc=Bcrypt.hashpw(pwd,Bcrypt.gensalt());
			
			 String mail=request.getParameter("mail");
			Statement stmt=con.createStatement();  
			ResultSet rs;
			HttpSession sess = request.getSession(); 
			
			
			rs= stmt.executeQuery("Select * from users where username = '"+un+"' and userp='"+1+"' ;");
			if(!rs.next())
			{
				getServletContext().getRequestDispatcher("/invalid.jsp").forward(request, response);
				return;
				
			}
			else{rs.previous();while(rs.next()){
			if(Bcrypt.checkpw(pwd,rs.getString("password")))
			{	
			
			sess.setAttribute( "username",un );
			
				getServletContext().getRequestDispatcher("/biggest.jsp").forward(request, response);
			
				
			
			}}}
			con.close();  
		}catch(Exception e){ System.out.println(e);}  
	}

}

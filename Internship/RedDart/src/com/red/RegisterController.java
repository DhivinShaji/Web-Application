package com.red;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
/**
 * Servlet implementation class RegisterController
 */
@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
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
			 String un=request.getParameter("username");
			 String pwd=request.getParameter("password");
			 String enc=Bcrypt.hashpw(pwd,Bcrypt.gensalt());
			
			 String mail=request.getParameter("email");
			Statement stmt=con.createStatement();  
			ResultSet rs;
			String no=request.getParameter("mobile");
			String fn=request.getParameter("firstname");
			String ln=request.getParameter("lastname");
			rs= stmt.executeQuery("Select * from users ;");
			while(rs.next())
			{
			if(un.equalsIgnoreCase(rs.getString("username"))){
				getServletContext().getRequestDispatcher("/exists.jsp").forward(request, response);
				return;
			}
			if(no.equalsIgnoreCase(rs.getString("phno"))){
				getServletContext().getRequestDispatcher("/existsph.jsp").forward(request, response);
				return;
			}
			if(mail.equalsIgnoreCase(rs.getString("mail"))){
				getServletContext().getRequestDispatcher("/existsmail.jsp").forward(request, response);
				return;
			}
			
			}
			
			int i = stmt.executeUpdate("insert into users values('"+un+"','"+enc+"','"+mail+"',null,'"+0+"','"+0+"','"+0+"','"+0+"','"+fn+"','"+ln+"','"+no+"');");
			
			getServletContext().getRequestDispatcher("/newuser.jsp").forward(request, response);
			
			con.close();  
		}catch(Exception e){ System.out.println(e);}  






	}

}

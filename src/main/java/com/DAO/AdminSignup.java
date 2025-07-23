package com.DAO;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/signupadmin")
public class AdminSignup extends HttpServlet {
	
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter pw=resp.getWriter();
		String Id = req.getParameter("Id");
		String Name = req.getParameter("Name");
		String Contact = req.getParameter("Contact");
		String Email = req.getParameter("Email");
		String Password = req.getParameter("Pass");
		String RePass=req.getParameter("confirmPassword");

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/office", "root", "root");
			PreparedStatement pst = con.prepareStatement("insert into admin values(?,?,?,?,?)");
		    pst.setInt(1, Integer.parseInt(Id));
		    pst.setString(2, Name);
		    pst.setLong(3, Long.parseLong(Contact));
		    pst.setString(4, Email);
		    pst.setString(5, Password);
		    if (Password.equals(RePass)) {
		    	boolean result=pst.execute();
				if (!result) {
//					pw.println("RECORD INSERTED SUCCESSFULL");
					req.getRequestDispatcher("adminlogin.jsp").include(req, resp);
				}

		    }
			else {
				req.setAttribute("msg", "Password mis match");
				req.getRequestDispatcher("adminSignup.jsp").include(req, resp);
			}
			con.close();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

package com.DAO;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/adminlogindto")
public class AdminLogin extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("Email");
		String password = req.getParameter("Password");
		boolean valid;
		try {
			valid = SaveAdminDAO.findAdmin(email, password);
			if (valid) {
				req.getRequestDispatcher("adminhome.jsp").include(req, resp);
			} else {
				req.setAttribute("msg", "Invalid Email or Password");
				req.getRequestDispatcher("adminlogin.jsp").include(req, resp);
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
}
package com.DAO;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/editstudentasd")
public class EditStudent extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		int physics=Integer.parseInt(req.getParameter("physics"));
		int chemistry=Integer.parseInt(req.getParameter("chemistry"));
		int maths=Integer.parseInt(req.getParameter("maths"));		
		try {
		   int row=SaveAdminDAO.updatestudent(id, name, physics, chemistry, maths);
			if(row==1) {
				req.setAttribute("success", "1");
				req.getRequestDispatcher("editstudent.jsp").include(req, resp);
			}
			else {
				req.setAttribute("success", "0");
				req.getRequestDispatcher("editstudent.jsp").include(req, resp);
			}
		} catch (ClassNotFoundException | SQLException  e) {
			e.printStackTrace();
		}
		 
	}
}

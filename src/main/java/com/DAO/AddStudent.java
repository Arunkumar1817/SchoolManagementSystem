package com.DAO;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DTO.StudentDTO;


@WebServlet("/asdh")
public class AddStudent extends HttpServlet {
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	int id=Integer.parseInt(req.getParameter("Roll"));
	String name=req.getParameter("Name");
	int phy=Integer.parseInt(req.getParameter("Physics"));
	int chem=Integer.parseInt(req.getParameter("Chemistry"));
	int math=Integer.parseInt(req.getParameter("Maths"));;
	StudentDTO s=new StudentDTO(id, name, phy, chem, math);
	int row;
	try {
		row=SaveAdminDAO.saveStudent(s);
		if(row==1) {
			req.setAttribute("msg", "Student data saved Successfully");
			req.getRequestDispatcher("addstudent.jsp").include(req, resp);;
		}
		else {
			req.setAttribute("msg", "Student data already exists");
			req.getRequestDispatcher("addstudent.jsp").include(req, resp);
		}
		
		
	} catch (ClassNotFoundException | SQLException e) {
		e.printStackTrace();
	}
}
}

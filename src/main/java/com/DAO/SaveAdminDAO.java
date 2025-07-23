package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.DTO.StudentDTO;


public class SaveAdminDAO {
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/office", "root", "root");
		
	}
	// SaveAdmin method
	public static int SaveAdmin(int id, String name, long contact, String email,String passwrod) throws ClassNotFoundException, SQLException {
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("insert into admin values(?,?,?,?,?)");
		pst.setInt(1, id);
		pst.setString(2, name);
		pst.setLong(3, contact);
		pst.setString(4, email);
		pst.setString(5, passwrod);
		return pst.executeUpdate();
	}
	
	// FindAdmin method
	public static boolean findAdmin(String email, String passsword) throws ClassNotFoundException, SQLException {
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("select * from admin where email=? and password=?");
		pst.setString(1, email);
		pst.setString(2, passsword);
		ResultSet rs=pst.executeQuery();
		if(rs.next()) {
			return true;
		}
		return false;
	}
	
   // Save Student
	public static int saveStudent(StudentDTO s) throws ClassNotFoundException, SQLException {
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("insert into students values(?,?,?,?,?)");
		pst.setInt(1, s.getId());
		pst.setString(2, s.getName());
		pst.setInt(3, s.getPhysics());
		pst.setInt(4, s.getChemistry());
		pst.setInt(5, s.getMaths());
		return pst.executeUpdate();
	}
	
	// FInd Student details using ID
	public static StudentDTO findStudent(int id) throws ClassNotFoundException, SQLException {
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("select * from student where id=?)");
		pst.setInt(1, id);
		ResultSet rs=pst.executeQuery();
		if (rs.next()) {
			StudentDTO s=new StudentDTO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getInt(5));
			return s;
		}
		return null;
	}
	
     //	Student Delete method
	public static int deleteStudent(int id) throws ClassNotFoundException, SQLException {
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("delete from students where id=?");
		pst.setInt(1, id);
		return pst.executeUpdate();
	}
	
	// FindAll Student
	public static List<StudentDTO> findAllSTudent() throws ClassNotFoundException, SQLException{
		Connection con=getConnection();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from students");
		List<StudentDTO> l=new ArrayList<StudentDTO>();
		while(rs.next()) {
			StudentDTO s=new StudentDTO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getInt(5));
			l.add(s);
		}
		return l;
	}
	
//	Update Student
	public static int updatestudent(int id,String name,int physics,int chemistry,int maths) throws SQLException, ClassNotFoundException {
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("update students set name=?,physics=?,chemistry=?,maths=? where id=?");
		pst.setString(1, name);
		pst.setInt(2, physics);
		pst.setInt(3, chemistry);
		pst.setInt(4, maths);
		pst.setInt(5,id);
		return pst.executeUpdate();
	}
}

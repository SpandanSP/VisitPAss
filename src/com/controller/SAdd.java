package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.SecurityBean;
import com.dao.SecurityDB;


/**
 * Servlet implementation class SAdd
 */
@WebServlet("/SAdd")
public class SAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String addr = request.getParameter("addr");
		String mob = request.getParameter("mob");
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		
		SecurityBean sb = new SecurityBean();
		sb.setFname(fname);
		sb.setLname(lname);
		sb.setAddr(addr);
		sb.setMob(mob);
		sb.setEmail(email);
		sb.setPass(pass);
		
		String sql = "insert into security(fname,lname,addr,mob,email,pass) values(?,?,?,?,?,?)";
		
		int i = SecurityDB.sEntry(sb,sql);
		
		if (i!=0) {
			
			 System.out.println("Value Inserted"); 
	    	 response.sendRedirect("acp.jsp");

	    }  
	     else {  
	     	 System.out.println("Value Not Inserted"); 
	     	 response.sendRedirect("sAdd.jsp");
	     
	     }  
		
	}

}

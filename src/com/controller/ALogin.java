package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ALoginDB;


/**
 * Servlet implementation class ALogin
 */
@WebServlet("/ALogin")
public class ALogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String admin_id = request.getParameter("admin_id");
		String admin_pass = request.getParameter("admin_pass");
		
		
		ALoginDB adb = new ALoginDB();
		
		if(adb.check(admin_id, admin_pass))
		{
			HttpSession session = request.getSession();
			session.setAttribute("UID",admin_id);
			response.sendRedirect("acp.jsp");
		}
		else
		{
			response.sendRedirect("adminlogin.jsp");
		}
	}

}

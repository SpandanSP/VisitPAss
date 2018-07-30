package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.SLoginDB;

/**
 * Servlet implementation class SLogin
 */
@WebServlet("/SLogin")
public class SLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String s_id = request.getParameter("s_id");
		String pass = request.getParameter("pass");
		
		
		SLoginDB sdb = new SLoginDB();
		
		if(sdb.check(s_id, pass))
		{
			HttpSession session = request.getSession();
			session.setAttribute("SID",s_id);
			response.sendRedirect("home.jsp");
		}
		else
		{
			response.sendRedirect("index.jsp");
		}
	}

}

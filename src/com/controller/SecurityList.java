package com.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.bean.SecurityBean;
import com.dao.SecurityDB;

@WebServlet("/SecurityList")
public class SecurityList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<SecurityBean>  securityList = SecurityDB.securityList();
		request.setAttribute("securityList", securityList);
		RequestDispatcher rsd = request.getRequestDispatcher("SecurityList.jsp");
		rsd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

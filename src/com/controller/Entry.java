package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.VisitorBean;
import com.dao.VisitorDB;
@WebServlet("/Entry")
public class Entry extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String v_fname = request.getParameter("v_fname");
	String v_lname = request.getParameter("v_lname");
	String v_add = request.getParameter("v_add");
	String gender = request.getParameter("gender");
	String date = request.getParameter("date");
	String intime = request.getParameter("intime");
	String outtime = null;
	String mno = request.getParameter("mno");
	String eid = request.getParameter("eid");
	String purp = request.getParameter("purp");
	String person = request.getParameter("person");
	String vctyp = request.getParameter("vctyp");
	String vcno = request.getParameter("vcno");
	VisitorBean eb = new VisitorBean();
	eb.setV_fname(v_fname);
	eb.setV_lname(v_lname);
	eb.setV_add(v_add);
	eb.setGender(gender);
	eb.setDate(date);
	eb.setIntime(intime);
	eb.setOuttime(outtime);
	eb.setMno(mno);
	eb.setEid(eid);
	eb.setPurp(purp);
	eb.setPerson(person);
	eb.setVctyp(vctyp);
	eb.setVcno(vcno);
	
	String sql = "insert into newv(v_fname,v_lname,v_add,gender,date,intime,outtime,mno,eid,purp,person,vctyp,vcno) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
	
	int i = VisitorDB.registerEntry(eb,sql);
	VisitorBean bean = VisitorDB.getVisitorDetailsForPrint(v_fname, date, mno);
	if (i!=0) {
		request.setAttribute("visitorDetails", bean);
		RequestDispatcher rsd = request.getRequestDispatcher("Success.jsp");
		rsd.forward(request, response);
    }  
     else {  
     	 System.out.println("Value Not Inserted"); 
     	 response.sendRedirect("Failed.jsp");
     
     }  
    
}
}

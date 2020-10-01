package com.shubh;

import java.io.IOException;
//import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/add")
public class AddServlet extends HttpServlet{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		String id=null, iname=null, name=null, email=null, amt=null;  
		
		id = req.getParameter("id");
		iname = req.getParameter("iname");
		name = req.getParameter("name");
		email = req.getParameter("email");
		amt = req.getParameter("amt");
//		ai = req.getParameter("myCheck");
		
		
		HttpSession session = req.getSession();
		session.setAttribute("id", id);
		session.setAttribute("iname", iname);
		session.setAttribute("name", name);
		session.setAttribute("email", email);
		session.setAttribute("amt", amt);
		
		if(id.isEmpty()==false && iname.isEmpty()==false && name.isEmpty()==false && email.isEmpty()==false && amt.isEmpty()==false){
			RequestDispatcher rd = req.getRequestDispatcher("Result.jsp");
			rd.forward(req, res);
		}else {
			RequestDispatcher rd = req.getRequestDispatcher("Check.jsp");
			rd.forward(req, res);
		}
//		PrintWriter out = res.getWriter();
//		out.println("result = " );
	}
}

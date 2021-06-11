package com.bank.business;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.bank.DAO.DataAccess;


@WebServlet("/register")
public class Register extends HttpServlet
{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		 String fname = req.getParameter("fullname");
		 String accNum = req.getParameter("account");
		 String gender = req.getParameter("flexRadioDefault");
		 String ifsc = req.getParameter("ifsc");
		 String mobileNum = req.getParameter("num");
		 String accType = req.getParameter("type");
		 String pass = req.getParameter("pass");
		 try {
			DataAccess.add(fname, accNum, gender, ifsc, mobileNum, accType,pass);
			String msg = "Account Created Successfully";
			RequestDispatcher dispatcher =  req.getRequestDispatcher("login.jsp");
			req.setAttribute("error", msg);
			dispatcher.forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
			String msg = "Account Creation Failed";
			RequestDispatcher dispatcher =  req.getRequestDispatcher("login.jsp");
			req.setAttribute("error", msg);
			dispatcher.forward(req, resp);
		}
		 }

}

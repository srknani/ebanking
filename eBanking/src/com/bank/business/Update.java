package com.bank.business;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bank.DAO.DataAccess;


@WebServlet("/updateServlet")
public class Update extends HttpServlet
{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		 String fname = req.getParameter("fullname");
		 String accNum = req.getParameter("account");
		 String gender = req.getParameter("flexRadioDefault");
		 String ifsc = req.getParameter("ifsc");
		 String mobileNum = req.getParameter("num");
		 String accType = req.getParameter("type");
		 HttpSession httpSession = req.getSession();
		
		 try {
			DataAccess.update(fname, accNum, gender, ifsc, mobileNum, accType);
			String msg = "Account Updated Successfully";
			httpSession.setAttribute("name", fname);
			RequestDispatcher dispatcher =  req.getRequestDispatcher("home.jsp");
			req.setAttribute("status", msg);
			req.setAttribute("id", accNum);
			dispatcher.forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
			String msg = "Account Updation Failed";
			RequestDispatcher dispatcher =  req.getRequestDispatcher("login.jsp");
			req.setAttribute("error", msg);
			dispatcher.forward(req, resp);
		}
		 }

}

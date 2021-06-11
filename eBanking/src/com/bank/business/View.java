package com.bank.business;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bank.DAO.DataAccess;
import com.bank.DAO.User;


public class View extends HttpServlet 
{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("id");
		try
		{
			 User user=  DataAccess.view(id);
			 req.setAttribute("userInfo", user);
			 RequestDispatcher dispatcher = req.getRequestDispatcher("home.jsp");
			 dispatcher.forward(req, resp);
		} 
		catch (ClassNotFoundException | SQLException e) 
		{
			e.printStackTrace();
			String msg = "Something Went Wrong";
			RequestDispatcher dispatcher =  req.getRequestDispatcher("login.jsp");
			req.setAttribute("status", msg);
			dispatcher.forward(req, resp);
		}
		
	}

}

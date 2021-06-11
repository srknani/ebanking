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

@WebServlet("/login")
public class Login extends HttpServlet
{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		String password = req.getParameter("pass");
		HttpSession httpSession = req.getSession();
		try
		{
			String name = DataAccess.signIn(id, password);
			if(name!=null)
			{
				
				httpSession.setAttribute("id", id);
				httpSession.setAttribute("name", name);
				RequestDispatcher dispatcher = req.getRequestDispatcher("home.jsp");
				dispatcher.forward(req, resp);
			}
			else
			{
				String msg ="Invalid Credentials";
				req.setAttribute("error", msg);
				RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");
				dispatcher.forward(req, resp);
			}
		}
		catch(Exception s)
		{
			s.printStackTrace();
			String msg ="Account Not Found";
			req.setAttribute("error", msg);
			RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");
			dispatcher.forward(req, resp);
		}
		
		
	}

}

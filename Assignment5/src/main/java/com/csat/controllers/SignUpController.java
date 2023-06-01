package com.csat.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.csat.dao.UserRecordsDAO;
import com.csat.models.User;

/**
 * Servlet implementation class SignUpController
 */
@WebServlet("/signup")
public class SignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher;
		
		String user_name = request.getParameter("user_name");
		String password = request.getParameter("password").trim();
		String email = request.getParameter("email");
		String contact = request.getParameter("contact");
		contact = (contact == null || contact.isEmpty() )? "N/A" : contact;
		String city = request.getParameter("city");
		city = (city == null || city.isEmpty() )? "N/A" : city;
		
		User user = new User();
		user.setUser_name(user_name);
		user.setPassword(password);
		user.setEmail(email);
		user.setCity(city);
		user.setContact(contact);
		
		String message = new UserRecordsDAO().registerStudent(user);
		dispatcher= request.getRequestDispatcher("login.jsp");
		request.setAttribute("status", message);
		if(message == "success")
			request.setAttribute("alert_status", "success");
		else
			request.setAttribute("alert_status", message);
		dispatcher.forward(request, response);
	}

}

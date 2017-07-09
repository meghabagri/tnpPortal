package com.exp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String eno=request.getParameter("eno");
		String pass=request.getParameter("pass");
		try {
			
			StudentDao dao=new StudentDao();
			Connection con=dao.getConnection();
			PreparedStatement stmt=(PreparedStatement) con.prepareStatement("Insert into login (eno, pass) values(?,?)");
			stmt.setString(1, eno);
			stmt.setString(2, pass);
			stmt.executeUpdate();
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
			
			con.close();
		} catch (Exception e) {
			out.print("some error occured.");
			System.out.println("Error in creating new user"+e);
		}
	}

}

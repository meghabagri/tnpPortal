package com.exp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Statement;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Login() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		System.out.println("megha");
		String eno = request.getParameter("eno");
		String pass = request.getParameter("pass");

		try {
			StudentDao dao=new StudentDao();
			Connection conn=dao.getConnection();
			Statement stmt = (Statement) conn.createStatement();
			ResultSet rs = stmt
					.executeQuery("select pass from login where eno='" + eno
							+ "'");

			System.out.println(eno + " Pass: " + pass);
			while (rs.next()) {

				String word = rs.getString("pass");
				if (pass.equals(word)) {
					HttpSession session=request.getSession();  
				        session.setAttribute("eno",eno); 
					RequestDispatcher rDispatcher = request
							.getRequestDispatcher("dash.jsp");
					rDispatcher.forward(request, response);
					 
				}
				else {

					RequestDispatcher rDispatcher = request
							.getRequestDispatcher("index.jsp");
					rDispatcher.forward(request, response);
					out.println("<script>");
					out.println("alert('You have entered a wrong initials')");
					out.println("n</script>");
				}
			}
			rs.close();
			conn.close();
		} catch (Exception e) {
			out.print("oops! some error occured");
			System.out.println(e);
		}

	}

}

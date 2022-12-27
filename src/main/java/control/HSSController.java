package control;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/*")
public class HSSController extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		System.out.println(req.getRequestURI());
		String[] reqURISplit = req.getRequestURI().split("/");
		
		String methodName = reqURISplit[2];
		
		switch(methodName) {
		case "login":
			req.getRequestDispatcher("/member/login.jsp").forward(req, res);
		default:
			req.getRequestDispatcher("/errorPage/");
		}
		
		
//		req.getRequestDispatcher("/member/login.jsp").forward(req, res);
		
	}
}

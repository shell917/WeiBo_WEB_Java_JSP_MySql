package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import dao.UserDaoImpl;
import entity.User;

public class QueryServlet extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String honeyname = request.getParameter("select");
		UserDao userDao = new UserDaoImpl();	
		List<User> USER = new ArrayList();
		USER = userDao.query(honeyname);
		HttpSession session = request.getSession();
		session.setAttribute("user", USER);
		
		
		response.sendRedirect("http://localhost:8080/dengxian/query.jsp");
	}

}

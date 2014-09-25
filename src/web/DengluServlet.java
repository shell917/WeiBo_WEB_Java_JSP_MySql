package web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.UserDao;
import dao.UserDaoImpl;

public class DengluServlet extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String password = request.getParameter("pass");
		UserDao userDao = new UserDaoImpl();
		if(userDao.denglu1(name, password)||userDao.denglu2(name, password)){
			response.sendRedirect("http://localhost:8080/dengxian/shouye.jsp");
		}else{
			response.sendRedirect("http://localhost:8080/dengxian/denglu.jsp");
		}
	}
}

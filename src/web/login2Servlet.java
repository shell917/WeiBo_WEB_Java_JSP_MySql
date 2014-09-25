package web;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import dao.UserDaoImpl;

public class login2Servlet extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		String phone = request.getParameter("m");
		String password = request.getParameter("p");
		String nicheng = request.getParameter("n");
		String sex = request.getParameter("sex");
		String address = request.getParameter("address");
		String address_ = request.getParameter("address_");
		String id = request.getParameter("id");
		String memo = request.getParameter("memo");
		Date date = new Date();
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String time = sf.format(date);
		UserDao userDao = new UserDaoImpl();
		userDao.add_(phone,password,nicheng,sex,address,address_,id,time,memo);
		response.sendRedirect("http://localhost:8080/dengxian/shouye.jsp");
	}

}

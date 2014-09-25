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

public class UpdateServlet extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response)
	   throws ServletException, IOException {
       response.setContentType("text/html");
       PrintWriter out = response.getWriter();
      UserDaoImpl userDao = new UserDaoImpl();	
     List<User> SHOW = new ArrayList();
     SHOW = userDao.update();
     HttpSession session = request.getSession();
     session.setAttribute("show", SHOW);


     response.sendRedirect("http://localhost:8080/dengxian/shouye.jsp");
     }

}


package com.douzone.guestbook.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.douzone.guestbook.dao.GuestbookDao;
import com.douzone.guestbook.vo.GuestbookVo;

@WebServlet("/GuestbookServlet")
public class GuestbookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String action = request.getParameter("a");
		
		if("add".equals(action)) {
			String name = request.getParameter("name");
			String password = request.getParameter("password");
			String contents = request.getParameter("message");

			if (!name.isEmpty() || !password.isEmpty() || !contents.isEmpty()) {

				GuestbookVo vo = new GuestbookVo();
				vo.setName(name);
				vo.setPassword(password);
				vo.setContents(contents);

				new GuestbookDao().insert(vo);
			}
			response.sendRedirect(request.getContextPath() + "/gb");
			
		} else if("delete".equals(action)) {

			String password = request.getParameter("password");
			String no = request.getParameter("no");
			
			GuestbookVo vo = new GuestbookVo();
			vo.setNo(Integer.parseInt(no));
			vo.setPassword(password);

			new GuestbookDao().delete(vo);
			response.sendRedirect(request.getContextPath() + "/gb");
			
		}  else if("deleteform".equals(action)) {
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/deleteform.jsp");
			rd.forward(request, response);				
		}else {
			// list(default) 처리
			List<GuestbookVo> list = new GuestbookDao().findAll();
			
			request.setAttribute("list", list);
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/index.jsp");
			rd.forward(request, response);				
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

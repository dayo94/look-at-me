package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.User_info;
import service.face.MypageService;
import service.impl.MypageServiceImpl;

/**
 * Servlet implementation class MypageUpdate
 */
@WebServlet("/update")
public class MypageUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	private MypageService mypageService = new MypageServiceImpl();
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	

		HttpSession session = req.getSession();
		
		User_info user_info = (User_info)session.getAttribute("user_info");
		
		System.out.println(user_info);
		
		
		session.setAttribute("user_info", user_info);

		req.getRequestDispatcher("/WEB-INF/my/update.jsp").forward(req, resp);
		
	
	}
	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		

		
		mypageService.update(req);
		
		
		
		resp.sendRedirect("/main");
	
	
	}
	
	
	
}

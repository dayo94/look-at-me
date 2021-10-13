package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.Attachment_profile;
import dto.User_info;
import service.face.MypageService;
import service.impl.MypageServiceImpl;

/**
 * Servlet implementation class MypageUpdate
 */
@WebServlet("/update")
public class MypageUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	private MypageService mypageService = new MypageServiceImpl();
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	

////		HttpSession session = req.getSession();
//
////		User_info user_info = (User_info)session.getAttribute("user_info");
////		System.out.println(user_info);
////		session.setAttribute("user_info", user_info);
////		int attach_no = user_info.getAttach_no();
////		System.out.println(attach_no);
////		Attachment attachmentFile = mypageService.getFile(attach_no);
//		
//		
//		//로그인 구현 이후 변경
////		int user_no = (int)session.getAttribute("user_no");
////		int user_no = 1;//테스트

		HttpSession session = req.getSession();

		User_info userInfo = (User_info) session.getAttribute("user_info");

		int user_no = userInfo.getUser_no();
		
		System.out.println(user_no);
		
		
		User_info user_info = mypageService.getUserInfo(user_no);
		System.out.println(user_info);
		req.setAttribute("user_info", user_info);
		
	
		Attachment_profile attachmentFile = mypageService.getFile(user_no);
		
		
		
		req.setAttribute("attachmentFile", attachmentFile);
		
		System.out.println(attachmentFile);
		
		req.getRequestDispatcher("/WEB-INF/my/update.jsp").forward(req, resp);
		
	
	}
	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		
		User_info userInfo = mypageService.update(req);
		
		
		System.out.println(userInfo);
		
		int user_no = userInfo.getUser_no(); 
		
		
		User_info user_info = mypageService.getUserInfo(user_no);
		
		req.setAttribute("user_info", user_info);
		
		
		
		Attachment_profile attachmentFile = mypageService.getFile(user_no);
		
		
		
		req.setAttribute("attachmentFile", attachmentFile);
		
		System.out.println(attachmentFile);
		
		
		req.getRequestDispatcher("/WEB-INF/my/main.jsp").forward(req, resp);
		
//		resp.sendRedirect("/main");
	
	
	}
	
	
	
}

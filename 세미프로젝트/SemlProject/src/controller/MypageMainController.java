package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Attachment_profile;
import dto.User_info;
import service.face.MypageService;
import service.impl.MypageServiceImpl;


/**
 * Servlet implementation class MypageController
 */
@WebServlet("/main")
public class MypageMainController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	
	
	private MypageService mypageService = new MypageServiceImpl();
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		//전달파라미터 얻기 - 로그인 정보
		User_info UserInfo = mypageService.getLoginUser_info(req);
	
		//로그인 인증
		boolean login = mypageService.login(UserInfo);
		
		if(login) {
		
			
//			mypageService.update(req);
			
			User_info userInfo = mypageService.getUser_no(req);
			
			int user_no = userInfo.getUser_no(); 
			
			
			User_info user_info = mypageService.getUserInfo(user_no);
			
			req.setAttribute("user_info", user_info);
			
			
			Attachment_profile attachmentFile = mypageService.getFile(user_no);
			
			
			
			req.setAttribute("attachmentFile", attachmentFile);
			
			System.out.println(attachmentFile);
			
			
		
		
		
		}
		
		
		req.getRequestDispatcher("/WEB-INF/my/main.jsp").forward(req, resp);
	}

}

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
 * Servlet implementation class MypageController
 */
@WebServlet("/main")
public class MypageMainController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private MypageService mypageService = new MypageServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 전달파라미터 얻기 - 로그인 정보
		User_info UserInfo = mypageService.getLoginUser_info(req);

		// 로그인 인증
		boolean login = mypageService.login(UserInfo);

		if (login) {

//			User_info userInfo = mypageService.getUser_no(req);
//
//			int user_no = userInfo.getUser_no();
//
//			User_info user_info = mypageService.getUserInfo(user_no);
//
//			req.setAttribute("user_info", user_info);
//
//			Attachment_profile attachmentFile = mypageService.getFile(user_no);
//
//			System.out.println(attachmentFile.getProfile_name());
//			
//			req.setAttribute("attachmentFile", attachmentFile);
//			mypageService.update(req);

			HttpSession session = req.getSession();
			User_info userInfo = (User_info) session.getAttribute("user_info");
			int user_no = userInfo.getUser_no();

			User_info user_info = mypageService.getUserInfo(user_no);

			req.setAttribute("user_info", user_info);

			Attachment_profile attachmentFile = mypageService.getFile(user_no);

//			System.out.println(attachmentFile.getProfile_name());

			req.setAttribute("attachmentFile", attachmentFile);

		}

		req.getRequestDispatcher("/WEB-INF/my/main.jsp").forward(req, resp);

	}

}

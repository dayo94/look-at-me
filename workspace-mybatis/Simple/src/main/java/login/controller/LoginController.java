package login.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import login.dto.Login;
import login.service.face.LoginService;


@Controller
public class LoginController {

	//로깅 객체
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	//서비스 객체
	@Autowired private LoginService loginService;
	
	
	@RequestMapping(value = "/login/main", method = RequestMethod.GET)
	public void main() {
		logger.info("/login/main [GET]");
		
	}
	
	@RequestMapping(value = "/login/join", method = RequestMethod.GET)
	public void join() {
		logger.info("/login/join [GET]");
		
	}
	
	@RequestMapping(value = "/login/join", method = RequestMethod.POST)
	public String joinProc(Login loginInfo) {
		logger.info("/login/joinProc [POST]");
		
		logger.info("loginInfo : {}", loginInfo);
		
		
		loginService.join(loginInfo);
		
		
		//리다이렉트
		return "redirect:/login/main";
		
	}
	
	
	@RequestMapping(value = "/login/login", method = RequestMethod.GET)
	public void login() {
		logger.info("/login/login [GET]");
		
	}

	@RequestMapping(value = "/login/login", method = RequestMethod.POST)
	public String loginProc(Login login, HttpSession session) {
		logger.info("/login/login [POST]");
		logger.info("전달파라미터 {}", login);
		
		//아이디 패스워드 DB조회 - 인증
		boolean isLogin = loginService.login(login);
		logger.info("isLogin : {} ", isLogin);
		
		//인증결과에 따른 세션 처리
		if( isLogin ) { //성공
			session.setAttribute("login", isLogin);
			session.setAttribute("loginid", login.getId());
			
		} else { //실패
			session.invalidate();
		}
		
		//리다이렉트
		return "redirect:/login/main";
		
	}
	
	@RequestMapping(value = "/login/logout")
	public String logout(HttpSession session) {
		logger.info("/login/logout ");

		session.invalidate();
		
		//리다이렉트
		return "redirect:/login/main";
	}
	
	@RequestMapping(value = "/login/mypage")
	public void mypage(HttpSession session, Model model) {
		String loginid = (String) session.getAttribute("loginid");
		
		logger.info("/login/mypage loginid : {} ", loginid);
		
		//로그인된 사용자의 정보 조회
		Login info = loginService.info(loginid);
		logger.info("조회결과 info : {} ", info);
		
		//사용자의 정보, 모델값 전달
		model.addAttribute("info", info);
		
		
		
		
	}
	
	
	
	
	
	
}//class

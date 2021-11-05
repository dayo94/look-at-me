package member.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import login.dto.Login;
import member.dto.Member;
import member.service.face.MemberService;

@Controller
public class MemberController {

	//로깅 객체
		private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
		
		@Autowired private MemberService memberService;
	
		
		
		
		@RequestMapping(value = "/member/main", method = RequestMethod.GET)
		public void main() {
			logger.info("/member/main [GET]");
			
		}
		
		@RequestMapping(value = "/member/join", method = RequestMethod.GET)
		public void join() {
			logger.info("/member/join [GET]");
			
		}
		
		
		
		@RequestMapping(value = "/member/join", method = RequestMethod.POST)
		public String joinProcess(Member member) {
			logger.info("/member/joinProcess [POST]");
			
			logger.info("Member : {}", member);
			
			
			memberService.joinMember(member);
			
			
			//리다이렉트
			return "redirect:/member/main";
			
		}
		
		
		
		@RequestMapping(value = "/member/login", method = RequestMethod.GET)
		public void login() {
			logger.info("/member/login [GET]");
			
		}
		
		
		@RequestMapping(value = "/member/login", method = RequestMethod.POST)
		public String loginProcess(Member member,HttpSession session) {
			logger.info("/member/login [POST]");
			logger.info("전달파라미터 {}", member);
			
			//아이디 패스워드 DB조회 - 인증
			boolean isLogin = memberService.login(member);
			logger.info("isLogin : {} ", isLogin);
			
			//인증결과에 따른 세션 처리
			if( isLogin ) { //성공
				session.setAttribute("login", isLogin);
				session.setAttribute("id", member.getId());
				session.setAttribute("nick", member.getNick());
				
			} else { //실패
				session.invalidate();
			}
			
			//리다이렉트
			return "redirect:/member/main";
			
			
		}
		
		@RequestMapping(value = "/member/logout")
		public String logout(HttpSession session) {
			logger.info("/member/logout ");

			session.invalidate();
			
			//리다이렉트
			return "redirect:/member/main";
		}
		
		
		
		
		
		
		
	
}

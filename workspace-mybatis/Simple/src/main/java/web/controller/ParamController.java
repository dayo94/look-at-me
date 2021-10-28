package web.controller;


import java.io.Reader;
import java.io.Writer;
import java.util.HashMap;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import web.dto.User;

@Controller
public class ParamController {
	
	//로깅 객체
	private static final Logger logger = LoggerFactory.getLogger(ParamController.class);
	
	@RequestMapping(value = "/param/requestParam", method = RequestMethod.GET)
	public String paramForm() {
		
		logger.info("TEST - /param/requestParam [GET]");
		
		
		//view지정
		return "param/paramForm";
	}//get

	@RequestMapping(value = "/param/requestParam", method = RequestMethod.POST)
	public String paramResult(
			@RequestParam(value = "aaaaa") String username
			, @RequestParam(value = "bbbbb") String userage) {
		
		int logIdx = 1;
		logger.trace("#{}. paramResult() 메소드 시작", logIdx++);
		
		logger.info("TEST - /param/requestParam [POST]");
		logger.trace("#{}. 중간확인", logIdx++);

		logger.debug("username : {}", username);
		logger.debug("userage : {}", userage);
		logger.trace("#{}. 파라미터 확인1", logIdx++);
		
		logger.debug("username : {}, userage : {}", username, userage);
		logger.trace("#{}. 파라미터 확인2", logIdx++);
		
		logger.trace("#{}. VIEW 지정, 메소드 종료", logIdx++);

		//--------------------------------------------------------------------------
		//view지정
		return "param/paramResult";
	}//post

	@RequestMapping(value = "/param/required") //get,post 다 가능 (한개만만들때는 안써도됨)
	public void requiredTest( @RequestParam(required = true) String test ) {
		//void여도 매핑 value.jsp로 알아서 찾아감
//		logger.info("/param/required");
		logger.info("/param/required - test : {}", test);
		logger.info("/param/required - test : {}", test);
		
	}
	
	
	@RequestMapping(value = "/param/test")
	public void paramTest(
			HttpSession session
			
			, Writer out
			, Reader in
			
			, Locale locale
			
			, Model model
			, ModelAndView mav
			, ModelMap modelMap
			
			
			) {
		
//		String userid = (String) session.getAttribute("userid");
		
//		out.write(str);
	}
	
	
	//form만 띄우기
	@RequestMapping(value = "/param/dto" , method = RequestMethod.GET)
	public void paramDtoForm() {
		logger.info("/param/dto [GET]");
	}
	
	@RequestMapping(value = "/param/dto" , method = RequestMethod.POST)
	public String paramDto(
			
			User user// //커맨드 객체
			
			, @ModelAttribute("u2") User user2 //커맨드 객체
			, Model model //모델값 처리 객체
			
			
			
			) {
		logger.info("/param/dto [POST]");
		logger.info("user : {}", user);
		logger.info("user2 : {}", user2);
		
		
		model.addAttribute("userData",user); //이게 더 활용도가 높음
		
		return "param/dtoResult";
	
	}
	
	
	@RequestMapping(value = "/param/map", method = RequestMethod.GET)
	public void paramMapForm() {
		logger.info("/param/map [GET]");
		
	}

	@RequestMapping(value = "/param/map", method = RequestMethod.POST)
	public String paramMapResult(@RequestParam HashMap<String, String> map, Model model) {
		logger.info("/param/map [POST]");
		logger.info("{}", map);
		
		
		//맵객체 자체를 모델값으로 전달한다
		model.addAttribute("m", map);
		
		//맵객체 내부의 키=값 쌍을 각각의 모델값으로 분리해서 전달한다(있다는것만 알고있음됨)
		model.addAllAttributes(map);
		
		
		return "param/mapResult";
	}
			
	
	
	
	
	
	
	
	
	
	
	
}//class

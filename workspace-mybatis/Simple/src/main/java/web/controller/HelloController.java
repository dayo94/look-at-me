package web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.service.face.HelloService;

@Controller
public class HelloController {

	//로깅 객체
	private static final Logger logger = LoggerFactory.getLogger(HelloController.class);
	
	//서비스 객체
	@Autowired private HelloService helloService;
	

	@RequestMapping(value = "/hello" , method = RequestMethod.GET)
	public String hello() {
		
		logger.info("/hello [GET]");
		
		helloService.serviceTest();
		
		
		return "test/hello";
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}//class

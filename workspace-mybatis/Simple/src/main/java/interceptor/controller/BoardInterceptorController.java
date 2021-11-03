package interceptor.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardInterceptorController {
	
	
	//로그 객체
	private static final Logger logger = LoggerFactory.getLogger(BoardInterceptorController.class);
		
		@RequestMapping(value = "/board/list", method = RequestMethod.GET)
		public void boardList()	{
			logger.info("/board/list [GET]");
			
		}
	
		@RequestMapping(value = "/board/write", method = RequestMethod.GET)
		public void boardWrite()	{
			logger.info("/board/write [GET]");
			
		}
		
	
		
		@RequestMapping(value = "/board/noLogin", method = RequestMethod.GET)
		public void boardNoLogin()	{
			logger.info("/board/noLogin [GET]");
			
		}
		
		
	

}//class

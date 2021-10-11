package service.impl;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;


import common.JDBCTemplate;
import dao.face.MypageDao;
import dao.impl.MypageDaoImpl;
import dto.User_info;
import service.face.MypageService;

public class MypageServiceImpl implements MypageService {

	private MypageDao mypageDao = new MypageDaoImpl();

	@Override
	public List<User_info> getList() {
		return mypageDao.selectAll(JDBCTemplate.getConnection());

	}

	@Override
	public User_info getLoginUser_info(HttpServletRequest req) {

		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		User_info user_info = new User_info();

		user_info.setUser_email(req.getParameter("user_email"));
		user_info.setUser_password(req.getParameter("user_password"));

		return user_info;

	}

	@Override
	public boolean login(User_info user_info) {

		if (mypageDao.selectCntUser_infoByUseremailUserpassword(JDBCTemplate.getConnection(), user_info) > 0) {
			return true; // 로그인 성공
		} else {
			return false; // 로그인 실패
		}

	}

	@Override
	public User_info info(User_info user_info) {

		return mypageDao.selectUser_infoByUser_email(JDBCTemplate.getConnection(), user_info);
	}

	@Override
	public User_info getUser_no(HttpServletRequest req) {
		// user_no를 저장할 객체 생성
		User_info user_no = new User_info();

		// user_no 전달파라미터 검증 - null, ""
		String param = req.getParameter("user_no");
		if (param != null && !"".equals(param)) {

			// user_no 전달파라미터 추출
			user_no.setUser_no(Integer.parseInt(param));
		}

		// 결과 객체 반환
		return user_no;

	}
	
	
	@Override
	public void update(HttpServletRequest req) {

		
		//DB연결 객체
		Connection conn = JDBCTemplate.getConnection();

		String userno = req.getParameter("user_no");
		String user_password = req.getParameter("user_password");
		String user_nickname = req.getParameter("user_nickname");
		int user_no =Integer.parseInt(userno);
		
		
		User_info user_info = new User_info();
		
		user_info.setUser_no(user_no);
		user_info.setUser_password(user_password);
		user_info.setUser_nickname(user_nickname);;
		

		//게시글 정보가 있을 경우
		if(user_info != null) {
			if( mypageDao.update(conn, user_info) > 0 ) {
				JDBCTemplate.commit(conn);
			} else {
				JDBCTemplate.rollback(conn);
			}
		}
		
		
		
	}
	
	
	
	
	

}

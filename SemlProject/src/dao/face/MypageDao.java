package dao.face;

import java.sql.Connection;
import java.util.List;

import dto.User_info;


public interface MypageDao {

	
	
	
	/**
	 * User_info테이블 전체 조회
	 * 
	 * @param conn - DB연결 객체
	 * @return List<User_info> - User_info테이블 전체 조회 결과 리스트
	 */
	public List<User_info> selectAll(Connection conn);

	
	
	
	
	/**
	 * user_email 과 user_password가 일치하는 회원의 수를 조회
	 * 
	 * @param User_info - 조회할 회원의 정보
	 * @return int - 1(존재하는 회원), 0(존재하지 않는 회원), -1(에러)
	 */
	public int selectCntUser_infoByUseremailUserpassword(Connection conn, User_info user_info);
	
	
	
	
	
	/**
	 * user_email을 이용해 회원정보 조회
	 * 
	 * @param user_info - 조회할 회원
	 * @return User_info - 조회된 결과 객체
	 */
	public User_info selectUser_infoByUser_email(Connection conn, User_info user_info);
	
	
	
	
	/**
	 * 회원정보 수정 
	 * 
	 * @param user_info - 수정할 내용을 담은 객체
	 */
	public int update(Connection conn, User_info user_info);
	
	
	
	
}

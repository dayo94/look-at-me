package service.face;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dto.Attachment_profile;
import dto.Custom_board;
import dto.Custom_reply;
import dto.Free_board;
import dto.Free_board_reply;
import dto.Official_reply;
import dto.User_info;


public interface MypageService {

	
	/**
	 * 게시글 전체 조회
	 * 
	 * @return List<User_info> - 유저정보 전체 조회 결과 리스트
	 */
	public List<User_info> getList();
	
	
	
	
	
	/**
	 * 로그인 정보 추출
	 * 
	 * @param req - 요청 정보 객체
	 * @return User_info - 로그인 정보
	 */
	public User_info getLoginUser_info(HttpServletRequest req);
	
	
	
	
	
	
	
	/**
	 * 로그인 처리
	 * 
	 * @param user_info - 로그인 정보
	 * @return true - 인증됨, false - 인증되지 않음
	 */
	public boolean login(User_info user_info);
	
	
	
	
	
	/**
	 * 유저정보 가져오기
	 * 
	 * @param user_info - 회원 아이디를 가진 객체
	 * @return User_info - 조회된 회원 정보
	 */
	public User_info info(User_info user_info);
	
	
	
	
	
	/**
	 * 요청파라미터 얻기
	 * 
	 * @param req - 요청정보객체
	 * @return User_info - 전달파라미터 user_no를 포함한 객체
	 */
	public User_info getUser_no(HttpServletRequest req);
	
	
	
	
	/**
	 * 회원정보 수정
	 * 
	 * @param req - 요청 정보 객체
	 */
	public User_info update(HttpServletRequest req);
	
	
	
//	
//	public Attachment getFile(int attach_no);
	public Attachment_profile getFile(int user_no);





	public User_info getUserInfo(int user_no);




	/**
	 * Custom_board테이블 전체 조회
	 * 
	 * @param conn - DB연결 객체
	 * @return List<Custom_board> - Custom_board테이블 전체 조회 결과 리스트
	 */
	public List<Custom_board> customBoardSelectAll(int user_no);
	
	
	/**
	 * Free_board테이블 전체 조회
	 * 
	 * @param conn - DB연결 객체
	 * @return List<Free_board> - Free_board테이블 전체 조회 결과 리스트
	 */
	public List<Free_board> freeBoardSelectAll(int user_no);
	
	
	/**
	 * Free_board_reply테이블 전체 조회
	 * 
	 * @param conn - DB연결 객체
	 * @return List<Free_board_reply> - Free_board_reply테이블 전체 조회 결과 리스트
	 */
	public List<Free_board_reply> freeBoardReplySelectAll(int user_no);
	
	/**
	 * Custom_reply테이블 전체 조회
	 * 
	 * @param conn - DB연결 객체
	 * @return List<Custom_reply> - Custom_reply테이블 전체 조회 결과 리스트
	 */
	public List<Custom_reply> customReplySelectAll(int user_no);
	
	
	/**
	 * Official_reply테이블 전체 조회
	 * 
	 * @param conn - DB연결 객체
	 * @return List<Official_reply> - Official_reply테이블 전체 조회 결과 리스트
	 */
	public List<Official_reply> officialReplySelectAll(int user_no);
	
	/**
	 * 
	 * @param user_info
	 */
	public void unregister(User_info user_info, String password);
	
	
	public User_info getUserInfoAll(int user_no);
	
	
	
	
}

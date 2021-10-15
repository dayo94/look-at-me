package service.face;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dto.Attachment_profile;
import dto.Custom_board;
import dto.Custom_reply;
import dto.Free_board;
import dto.Free_board_reply;
import dto.Official_reply;
import dto.Qna_board;
import dto.Qna_board_attachment;
import dto.User_admin;
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
	public void update(HttpServletRequest req);

	/**
	 * 
	 * @param user_no - 전달파라미터
	 * @return
	 */
	public Attachment_profile getFile(int user_no);

	/**
	 * 
	 * @param user_no - 유저정보조회 전달파라미터
	 * @return
	 */
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
	 * @param user_info - 삭제할객체
	 * @param password  - 입력받은 패스워드
	 */
	public void unregister(User_info user_info, String password);

	/**
	 * 
	 * @param user_no 패스워드까지 다 나오는 유저정보객체
	 * @return
	 */
	public User_info getUserInfoAll(int user_no);

	/**
	 * 게시글 작성 입력한 게시글 내용을 DB에 저장
	 * 
	 * [ 추가 예정 ] 첨부파일을 함께 업로드 할 수 있도록 처리
	 * 
	 * @param req - 요청정보 객체(게시글내용 + 첨부파일)
	 * 
	 */
	public void write(HttpServletRequest req);

	public Qna_board getBoardno(HttpServletRequest req);

	/**
	 * Qna_board테이블 전체 조회
	 * 
	 * @param conn - DB연결 객체
	 * @return List<Qna_board> - Qna_board테이블 전체 조회 결과 리스트
	 */
	public List<Qna_board> qnaBoardSelectAll(int user_no);

	
	/**
	 * 주어진 qna_board_no를 이용하여 게시글을 조회한다
	 * 
	 * @param qna_board_no - qna_board_no를 가지고 있는 객체
	 * @return Qna_board - 조회된 게시글
	 */
	public Qna_board view(Qna_board boardno);
	
	public Qna_board_attachment viewFile(Qna_board viewBoard);
	
	/**
	 * 게시글 수정
	 * 
	 * @param req - 요청 정보 객체
	 */
	public void updateQna(HttpServletRequest req);

	/**
	 * 게시글 삭제
	 * 
	 * @param board - 삭제할 게시글 번호를 가진 객체
	 */
	public void deleteQna(Qna_board board);
	
	
	
	/**
	 * 로그인 정보 추출
	 * 
	 * @param req - 요청 정보 객체
	 * @return User_admin - 로그인 정보
	 */
	public User_admin getLoginAdmin_info(HttpServletRequest req);

	/**
	 * 로그인 처리
	 * 
	 * @param user_admin - 로그인 정보
	 * @return true - 인증됨, false - 인증되지 않음
	 */
	public boolean login(User_admin user_admin);
	
	
	/**
	 * 게시글 전체 조회
	 * 
	 * @return List<Qna_board> - 문의글 전체 조회 결과 리스트
	 */
	public List<Qna_board> getListQnaBoard();
	
	
	public Qna_board qnaBoardByuserno(int user_no);
	
	
	public Qna_board qnaBoardByBoardno(Qna_board qna_board);
	
	
}

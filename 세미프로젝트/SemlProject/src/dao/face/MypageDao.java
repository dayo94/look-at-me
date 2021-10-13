package dao.face;

import java.sql.Connection;
import java.util.List;

import dto.Attachment_profile;
import dto.Custom_board;
import dto.Custom_reply;
import dto.Free_board;
import dto.Free_board_reply;
import dto.Official_reply;
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
	
	
//	
//	/**
//	 * 첨부파일 입력
//	 * 
//	 * @param conn - DB연결 객체
//	 * @param attachment - 첨부파일 정보
//	 * @return 삽입 결과
//	 */
//	public int insertFile(Connection conn, Attachment attachment);
//
//	/**
//	 * 첨부파일 조회
//	 * 
//	 * @param connection - DB연결 객체
//	 * @param attach_no - 첨부파일을 조회할 첨부파일번호
//	 * @return Attachment - 첨부파일객체
//	 */
//	public Attachment getByAttach_no(Connection conn, int attach_no);
//
//
//
//
//	/**
//	 * 사용자의 attach_no를 변경하여 프로필 사진을 업데이트한다
//	 * @param conn
//	 * @param user_info
//	 * @param attachment
//	 * @return
//	 */
//	public int updateProfile(Connection conn, User_info user_info, Attachment attachment);
//
//


//	/**
//	 * 첨부파일 번호 seq의 nextval을 반환한다 
//	 * 
//	 * @param conn
//	 * @return
//	 */
//	public int getNextAttachNo(Connection conn);





	public User_info selectUserInfoByUserNo(Connection conn, int user_no);
	
	
	
	
	/**
	 * 첨부파일 입력
	 * 
	 * @param conn - DB연결 객체
	 * @param attachment_profile - 첨부파일 정보
	 * @return 삽입 결과
	 */
	public int insertFile(Connection conn, Attachment_profile attachment_profile);

	/**
	 * 첨부파일 조회
	 * 
	 * @param connection - DB연결 객체
	 * @param user_no - 첨부파일을 조회할 첨부파일번호
	 * @return Attachment_profile - 첨부파일객체
	 */
	public Attachment_profile getByUser_no(Connection conn, int user_no);




	/**
	 * 사용자의 user_no를 변경하여 프로필 사진을 업데이트한다
	 * @param conn
	 * @param user_info
	 * @param attachment_profile
	 * @return
	 */
	public int updateProfile(Connection conn, User_info user_info, Attachment_profile attachment_profile);
	
	
	
	
	/**
	 * 첨부파일 번호 seq의 nextval을 반환한다 
	 * 
	 * @param conn
	 * @return
	 */
	public int getNextProfileNo(Connection conn);

	
	
	
	/**
	 * 내가쓴 게시글 조회
	 * 
	 * @param user_no - 조회할 user_no를 가진 객체
	 * @return customBoard - 조회된 결과 객체
	 */
	public List<Custom_board> customBoardByUserno(Connection conn, int user_no);
	
	
	/**
	 * 내가쓴 게시글 조회
	 * 
	 * @param user_no - 조회할 user_no를 가진 객체
	 * @return Free_board - 조회된 결과 객체
	 */
	public List<Free_board> freeBoardByUserno(Connection conn, int user_no);
	
	
	
//	public List<custom_board, free_board> joinBoard(Connection conn, int user_no);
	
	
	
	/**
	 * 내가쓴 댓글 조회
	 * 
	 * @param user_no - 조회할 user_no를 가진 객체
	 * @return Free_board_reply - 조회된 결과 객체
	 */
	public List<Free_board_reply> freeBoardReplyByUserno(Connection conn, int user_no);
	
	/**
	 * 내가쓴 댓글 조회
	 * 
	 * @param user_no - 조회할 user_no를 가진 객체
	 * @return custom_reply - 조회된 결과 객체
	 */
	public List<Custom_reply> customReplyByUserno(Connection conn, int user_no);
	
	/**
	 * 내가쓴 댓글 조회
	 * 
	 * @param user_no - 조회할 user_no를 가진 객체
	 * @return official_reply - 조회된 결과 객체
	 */
	public List<Official_reply> officialReplyByUserno(Connection conn, int user_no);
	
	
	
	
	/**
	 * 회원탈퇴
	 * 
	 * @param  - 탈퇴한 회원정보를 담은 객체
	 */
//	public User_info delete(Connection conn, int user_no );
	public int delete(Connection conn, int user_no );
	
	
	
	
	public User_info unregsterUserInfoByUserNo(Connection conn, int user_no);
	
	
	
//	public int deleteFile(Connection conn, int user_no);
	
	
	
}//class




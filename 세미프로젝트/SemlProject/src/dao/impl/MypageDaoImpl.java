package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCTemplate;
import dao.face.MypageDao;
import dto.Attachment_profile;
import dto.Custom_board;
import dto.Custom_reply;
import dto.Free_board;
import dto.Free_board_reply;
import dto.Official_reply;
import dto.User_info;

public class MypageDaoImpl implements MypageDao {

	private PreparedStatement ps = null; // SQL수행 객체
	private ResultSet rs = null; // SQL조회 결과 객체

	@Override
	public List<User_info> selectAll(Connection conn) {

		// SQL 작성
		String sql = "";
		sql += "SELECT * FROM user_info";
		sql += " ORDER BY user_no";

		// 결과 저장할 List
		List<User_info> user_info = new ArrayList<>();

		try {
			ps = conn.prepareStatement(sql); // SQL수행 객체

			rs = ps.executeQuery(); // SQL 수행 및 결과집합 저장

			// 조회 결과 처리
			while (rs.next()) {
				User_info info = new User_info(); // 결과값 저장 객체

				// 결과값 한 행 처리
				info.setUser_no(rs.getInt("user_no"));
				info.setUser_email(rs.getString("user_email"));
				info.setUser_password(rs.getString("user_password"));
				info.setUser_point(rs.getInt("user_point"));
				info.setUser_name(rs.getString("user_name"));
				info.setUser_birth(rs.getDate("user_birth"));
				info.setUser_check(rs.getString("user_check"));
				info.setUser_nickname(rs.getString("user_nickname"));

				// 리스트에 결과값 저장
				user_info.add(info);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// DB객체 닫기
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}

		// 최종 결과 반환
		return user_info;

	}

	@Override
	public int selectCntUser_infoByUseremailUserpassword(Connection conn, User_info user_info) {

		// SQL 작성
		String sql = "";
		sql += "SELECT count(*) FROM user_info";
		sql += " WHERE 1=1";
		sql += "	AND user_email = ?";
		sql += "	AND user_password = ?";

		// 결과 저장할 변수
		int cnt = -1;

		try {
			ps = conn.prepareStatement(sql); // SQL수행 객체

			ps.setString(1, user_info.getUser_email());
			ps.setString(2, user_info.getUser_password());

			rs = ps.executeQuery(); // SQL 수행 및 결과집합 저장

			// 조회 결과 처리
			while (rs.next()) {
				cnt = rs.getInt(1);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// DB객체 닫기
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}

		// 최종 결과 반환
		return cnt;

	}

	@Override
	public User_info selectUser_infoByUser_email(Connection conn, User_info user_info) {

		// SQL 작성
		String sql = "";
		sql += "SELECT * FROM user_info";
		sql += " WHERE 1=1";
		sql += "	AND user_email = ?";

		// 조회결과를 저장할 객체
		User_info result = null;

		try {
			ps = conn.prepareStatement(sql); // SQL수행 객체

			ps.setString(1, user_info.getUser_email());

			rs = ps.executeQuery(); // SQL 수행 및 결과집합 저장

			// 조회 결과 처리
			while (rs.next()) {
				result = new User_info();

				result.setUser_no(rs.getInt("user_no"));
				result.setUser_email(rs.getString("user_email"));
				result.setUser_password(rs.getString("user_password"));
				result.setUser_point(rs.getInt("user_point"));
				result.setUser_name(rs.getString("user_name"));
				result.setUser_birth(rs.getDate("user_birth"));
				result.setUser_check(rs.getString("user_check"));
				result.setUser_nickname(rs.getString("user_nickname"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// DB객체 닫기
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}

		// 최종 결과 반환
		return result;
	}

	@Override
	public int update(Connection conn, User_info user_info) {

		String sql = "";
		sql += "update user_info";
		sql += " set user_password = ?, user_nickname = ?";
		sql += " where user_no = ? ";

		// DB 객체
		PreparedStatement ps = null;

		int res = -1;

		try {
			// DB작업
			ps = conn.prepareStatement(sql);
			ps.setString(1, user_info.getUser_password());
			ps.setString(2, user_info.getUser_nickname());
			ps.setInt(3, user_info.getUser_no());

			res = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();

		} finally {
			JDBCTemplate.close(ps);
		}

		return res;
	}

//	@Override
//	public int insertFile(Connection conn, Attachment attachment) {
//		String sql = "";
//		sql += "INSERT INTO attachment( attach_no, original_file_name, stored_file_name, file_size, file_date)";
//		
//		if( attachment.getAttach_no() != 0 ) { //attach_no 가 매개변수에 존재할 경우 그 값 활용하여 처리
//			sql += " VALUES( "+ attachment.getAttach_no() +", ?, ?, ?, sysdate )";
//		} else if ( attachment.getAttach_no() == 0 ) { //attach_no가 없을경우 시퀀스를 이용한 nextval 처리
//			sql += " VALUES( attachment_seq.nextval, ?, ?, ?, sysdate )";
//		}
//
//		int res = 0;
//
//		try {
//			ps = conn.prepareStatement(sql);
//
//			ps.setString(1, attachment.getOriginal_file_name());
//			ps.setString(2, attachment.getStored_file_name());
//			ps.setInt(3, attachment.getFile_size());
//
//			res = ps.executeUpdate();
//
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			JDBCTemplate.close(ps);
//		}
//
//		return res;
//	}
//
//	@Override
//	public Attachment getByAttach_no(Connection conn, int attach_no) {
//
//		String sql = "";
//		sql += "SELECT * FROM attachment";
//		sql += " WHERE attach_no = ?";
//		sql += " ORDER BY attach_no";
//
//		Attachment attachment = null;
//
//		try {
//			ps = conn.prepareStatement(sql);
//
//			ps.setInt(1, attach_no);
//
//			rs = ps.executeQuery();
//
//			while (rs.next()) {
//				attachment = new Attachment();
//
//				attachment.setAttach_no( rs.getInt("attach_no") );
//				attachment.setBoard_type( rs.getString("board_type") );
//				attachment.setBoard_no( rs.getInt("board_no") );
//				attachment.setOriginal_file_name( rs.getString("original_file_name") );
//				attachment.setStored_file_name( rs.getString("stored_file_name") );
//				attachment.setFile_size( rs.getInt("file_size") );
//				attachment.setFile_date( rs.getDate("file_date") );
//			}
//
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			JDBCTemplate.close(rs);
//			JDBCTemplate.close(ps);
//		}
//
//		return attachment;
//	}
//
//	@Override
//	public int updateProfile(Connection conn, User_info user_info, Attachment attachment) {
//
//		String sql = "";
//		sql += "update user_info";
//		sql += " set attach_no = ?";
//		sql += " where user_no = ? ";
//
//		// DB 객체
//		PreparedStatement ps = null;
//
//		int res = -1;
//
//		try {
//			// DB작업
//			ps = conn.prepareStatement(sql);
//			ps.setInt(1, attachment.getAttach_no());
//			ps.setInt(2, user_info.getUser_no());
//
//			res = ps.executeUpdate();
//
//		} catch (SQLException e) {
//			e.printStackTrace();
//
//		} finally {
//			JDBCTemplate.close(ps);
//		}
//
//		return res;
//	}
//	@Override
//	public int getNextAttachNo(Connection conn) {
//		
//		String sql = "";
//		sql += "SELECT attachment_seq.nextval FROM dual";
//		
//		int attachNo = 0;
//		
//		try {
//			ps = conn.prepareStatement(sql);
//			rs = ps.executeQuery();
//			rs.next();
//
//			attachNo = rs.getInt(1);
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			JDBCTemplate.close(rs);
//			JDBCTemplate.close(ps);
//		}
//		
//		return attachNo;
//	}

	@Override
	public User_info selectUserInfoByUserNo(Connection conn, int user_no) {

		// SQL 작성
		String sql = "";
		sql += "SELECT * FROM user_info";
		sql += " WHERE 1=1";
		sql += "	AND user_no = ?";

		// 조회결과를 저장할 객체
		User_info result = null;

		try {
			ps = conn.prepareStatement(sql); // SQL수행 객체

			ps.setInt(1, user_no);

			rs = ps.executeQuery(); // SQL 수행 및 결과집합 저장

			// 조회 결과 처리
			while (rs.next()) {
				result = new User_info();

				result.setUser_no(rs.getInt("user_no"));
				result.setUser_email(rs.getString("user_email"));
//				result.setUser_password(rs.getString("user_password"));
				result.setUser_point(rs.getInt("user_point"));
				result.setUser_name(rs.getString("user_name"));
				result.setUser_birth(rs.getDate("user_birth"));
				result.setUser_check(rs.getString("user_check"));
				result.setUser_nickname(rs.getString("user_nickname"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// DB객체 닫기
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}

		// 최종 결과 반환
		return result;
	}

	@Override
	public List<Custom_board> customBoardByUserno(Connection conn, int user_no) {

		// SQL 작성
		String sql = "";
		sql += "SELECT * FROM custom_board";
		sql += " WHERE user_no = ?";

		// 결과 저장할 Board객체
		List<Custom_board> BoardList = new ArrayList<>();

		try {
			ps = conn.prepareStatement(sql); // SQL수행 객체

			ps.setInt(1, user_no); // 조회할 게시글 번호 적용

			rs = ps.executeQuery(); // SQL 수행 및 결과집합 저장

			// 조회 결과 처리
			while (rs.next()) {

				Custom_board viewBoard = new Custom_board();

				viewBoard = new Custom_board(); // 결과값 저장 객체

				// 결과값 한 행 처리
				viewBoard.setCustom_board_no(rs.getInt("custom_board_no"));
				viewBoard.setUser_no(rs.getInt("user_no"));
				viewBoard.setCustom_board_title(rs.getString("custom_board_title"));
				viewBoard.setCustom_board_content(rs.getString("custom_board_content"));
				viewBoard.setCustom_board_date(rs.getDate("custom_board_date"));
				viewBoard.setCustom_board_hit(rs.getInt("custom_board_hit"));
				viewBoard.setCustom_board_vote(rs.getInt("custom_board_vote"));

				BoardList.add(viewBoard);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// DB객체 닫기
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}

		// 최종 결과 반환
		return BoardList;
	}
	
	@Override
	public List<Free_board> freeBoardByUserno(Connection conn, int user_no) {

		// SQL 작성
		String sql = "";
		sql += "SELECT * FROM free_board";
		sql += " WHERE user_no = ?";

		// 결과 저장할 Board객체
		List<Free_board> BoardList = new ArrayList<>();

		try {
			ps = conn.prepareStatement(sql); // SQL수행 객체

			ps.setInt(1, user_no); // 조회할 게시글 번호 적용

			rs = ps.executeQuery(); // SQL 수행 및 결과집합 저장

			// 조회 결과 처리
			while (rs.next()) {

				Free_board viewBoard = new Free_board();

				viewBoard = new Free_board(); // 결과값 저장 객체

				// 결과값 한 행 처리
				viewBoard.setFree_board_no(rs.getInt("free_board_no"));
				viewBoard.setUser_no(rs.getInt("user_no"));
				viewBoard.setFree_board_title(rs.getString("free_board_title"));
				viewBoard.setFree_board_content(rs.getString("free_board_content"));
				viewBoard.setFree_board_date(rs.getDate("free_board_date"));
				viewBoard.setFree_board_hit(rs.getInt("free_board_hit"));
				viewBoard.setFree_board_vote(rs.getInt("free_board_vote"));

				BoardList.add(viewBoard);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// DB객체 닫기
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}

		// 최종 결과 반환
		return BoardList;
	}
	
//	
//	@Override
//	public List joinBoard(Connection conn, int user_no) {
//		String sql = "";
//		sql += "SELECT * FROM custom_board WHERE user_no = ? ";
//		sql += " UNION";
//		sql += " SELECT * FROM free_board WHERE user_no = ?";
//		
//		
//		// 결과 저장할 Board객체
//		List<Free_board> BoardList = new ArrayList<>();
//
//		try {
//			ps = conn.prepareStatement(sql); // SQL수행 객체
//
//			ps.setInt(1, user_no); // 조회할 게시글 번호 적용
//
//			rs = ps.executeQuery(); // SQL 수행 및 결과집합 저장
//
//			// 조회 결과 처리
//			while (rs.next()) {
//
//				Free_board viewBoard = new Free_board();
//
//				viewBoard = new Free_board(); // 결과값 저장 객체
//
//				// 결과값 한 행 처리
//				viewBoard.setFree_board_no(rs.getInt("free_board_no"));
//				viewBoard.setBoard_type(rs.getString("board_type"));
//				viewBoard.setUser_no(rs.getInt("user_no"));
//				viewBoard.setAttach_no(rs.getInt("attach_no"));
//				viewBoard.setFree_board_title(rs.getString("free_board_title"));
//				viewBoard.setFree_board_content(rs.getString("free_board_content"));
//				viewBoard.setFree_board_date(rs.getDate("free_board_date"));
//				viewBoard.setFree_board_hit(rs.getInt("free_board_hit"));
//				viewBoard.setFree_board_vote(rs.getInt("free_board_vote"));
//
//				BoardList.add(viewBoard);
//
//			}
//
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			// DB객체 닫기
//			JDBCTemplate.close(rs);
//			JDBCTemplate.close(ps);
//		}
//
//		// 최종 결과 반환
//		return BoardList;
//		
//		return ;
//	}
//	
	
	
	
	

	@Override
	public Attachment_profile getByUser_no(Connection conn, int user_no) {

		String sql = "";
		sql += "SELECT * FROM attachment_profile";
		sql += " WHERE user_no = ?";
		sql += " ORDER BY profile_no";

		Attachment_profile attachment_profile = null;

		try {
			ps = conn.prepareStatement(sql);

			ps.setInt(1, user_no);

			rs = ps.executeQuery();

			while (rs.next()) {
				attachment_profile = new Attachment_profile();

				attachment_profile.setProfile_no( rs.getInt("profile_no") );
				attachment_profile.setUser_no( rs.getInt("user_no") );
				attachment_profile.setProfile_name( rs.getString("profile_name") );
				
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}

		return attachment_profile;
	}
	
	

	@Override
	public int getNextProfileNo(Connection conn) {
		
		String sql = "";
		sql += "SELECT attachment_profile_seq.nextval FROM dual";
		
		int profileNo = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			rs.next();

			profileNo = rs.getInt(1);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		
		return profileNo;
	}

	@Override
	public int insertFile(Connection conn, Attachment_profile attachment_profile) {
		String sql = "";
		sql += "INSERT INTO attachment_profile( profile_no, user_no, profile_name )";
//		sql += " values(attachment_profile_seq.nextval,?,?)";
		if( attachment_profile.getProfile_no() != 0 ) { //attach_no 가 매개변수에 존재할 경우 그 값 활용하여 처리
			sql += " VALUES( "+ attachment_profile.getProfile_no() +", ?, ? )";
		} else if ( attachment_profile.getProfile_no() == 0 ) { //attach_no가 없을경우 시퀀스를 이용한 nextval 처리
			sql += " VALUES( attachment_profile_seq.nextval, ?, ? )";
		}

		int res = 0;

		try {
			ps = conn.prepareStatement(sql);

			ps.setInt(1, attachment_profile.getUser_no());
			ps.setString(2, attachment_profile.getProfile_name());

			res = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(ps);
		}

		return res;
	}

	@Override
	public int updateProfile(Connection conn, User_info user_info, Attachment_profile attachment_profile) {

		String sql = "";
		sql += "update attachment_profile";
		sql += " set profile_name = ? ";
		sql += " where user_no = ? ";

		// DB 객체
		PreparedStatement ps = null;

		int res = -1;

		try {
			// DB작업
			ps = conn.prepareStatement(sql);
			ps.setString(1, attachment_profile.getProfile_name());
			ps.setInt(2, user_info.getUser_no());

			res = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();

		} finally {
			JDBCTemplate.close(ps);
		}

		return res;
	}

	
	
	
	
	@Override
	public List<Custom_reply> customReplyByUserno(Connection conn, int user_no) {
		// SQL 작성
		String sql = "";
		sql += "SELECT * FROM custom_reply";
		sql += " WHERE user_no = ?";

		// 결과 저장할 Board객체
		List<Custom_reply> BoardList = new ArrayList<>();

		try {
			ps = conn.prepareStatement(sql); // SQL수행 객체

			ps.setInt(1, user_no); // 조회할 게시글 번호 적용

			rs = ps.executeQuery(); // SQL 수행 및 결과집합 저장

			// 조회 결과 처리
			while (rs.next()) {

				Custom_reply viewBoard = new Custom_reply();

				viewBoard = new Custom_reply(); // 결과값 저장 객체

				// 결과값 한 행 처리
				viewBoard.setCustom_reply_no(rs.getInt("custom_reply_no"));
				viewBoard.setCustom_board_no(rs.getInt("custom_board_no"));
				viewBoard.setUser_no(rs.getInt("user_no"));
				viewBoard.setCustom_reply_content(rs.getString("custom_reply_content"));
				viewBoard.setComment_date(rs.getDate("comment_date"));

				BoardList.add(viewBoard);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// DB객체 닫기
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}

		// 최종 결과 반환
		return BoardList;
	}
	
	
	@Override
	public List<Free_board_reply> freeBoardReplyByUserno(Connection conn, int user_no) {
		// SQL 작성
		String sql = "";
		sql += "SELECT * FROM free_board_reply";
		sql += " WHERE user_no = ?";

		// 결과 저장할 Board객체
		List<Free_board_reply> BoardList = new ArrayList<>();

		try {
			ps = conn.prepareStatement(sql); // SQL수행 객체

			ps.setInt(1, user_no); // 조회할 게시글 번호 적용

			rs = ps.executeQuery(); // SQL 수행 및 결과집합 저장

			// 조회 결과 처리
			while (rs.next()) {

				Free_board_reply viewBoard = new Free_board_reply();

				viewBoard = new Free_board_reply(); // 결과값 저장 객체

				// 결과값 한 행 처리
				viewBoard.setFree_reply_no(rs.getInt("free_reply_no"));
				viewBoard.setFree_board_no(rs.getInt("free_board_no"));
				viewBoard.setUser_no(rs.getInt("user_no"));
				viewBoard.setFree_reply_content(rs.getString("free_reply_content"));
				viewBoard.setFree_reply_date(rs.getDate("free_reply_date"));

				BoardList.add(viewBoard);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// DB객체 닫기
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}

		// 최종 결과 반환
		return BoardList;
	}
	
	
	@Override
	public List<Official_reply> officialReplyByUserno(Connection conn, int user_no) {
		// SQL 작성
		String sql = "";
		sql += "SELECT * FROM official_reply";
		sql += " WHERE user_no = ?";

		// 결과 저장할 Board객체
		List<Official_reply> BoardList = new ArrayList<>();

		try {
			ps = conn.prepareStatement(sql); // SQL수행 객체

			ps.setInt(1, user_no); // 조회할 게시글 번호 적용

			rs = ps.executeQuery(); // SQL 수행 및 결과집합 저장

			// 조회 결과 처리
			while (rs.next()) {

				Official_reply viewBoard = new Official_reply();

				viewBoard = new Official_reply(); // 결과값 저장 객체

				// 결과값 한 행 처리
				viewBoard.setOfficial_reply_no(rs.getInt("official_reply_no"));
				viewBoard.setOfficial_board_no(rs.getInt("official_board_no"));
				viewBoard.setUser_no(rs.getInt("user_no"));
				viewBoard.setOfficial_reply_content(rs.getString("official_reply_content"));
				viewBoard.setOfficial_reply_date(rs.getDate("official_reply_date"));

				BoardList.add(viewBoard);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// DB객체 닫기
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}

		// 최종 결과 반환
		return BoardList;
	}
	
	
	
	
	
}// class

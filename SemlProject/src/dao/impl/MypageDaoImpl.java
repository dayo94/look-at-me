package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCTemplate;
import dao.face.MypageDao;
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
				info.setUser_nickname(rs.getString("user_nickname"));
				info.setUser_point(rs.getInt("user_point"));
				info.setUser_name(rs.getString("user_name"));
				info.setUser_birth(rs.getDate("user_birth"));

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
				result.setUser_nickname(rs.getString("user_nickname"));
				result.setUser_point(rs.getInt("user_point"));
				result.setUser_name(rs.getString("user_name"));
				result.setUser_birth(rs.getDate("user_birth"));
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

}

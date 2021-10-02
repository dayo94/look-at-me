package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCTemplate;
import dao.face.BoardDao;
import dto.Board;

public class BoardDaoImpl implements BoardDao {

	
	
	
	@Override
	public List<Board> selectAll(Connection conn) {

		PreparedStatement ps = null; //SQL수행 객체
		ResultSet rs = null; //조회결과 객체
		
		
		String sql = "";
		sql += "SELECT";
		sql += " boardno, title, userid, content, hit, write_date";
		sql += " FROM board ";
		sql += " ORDER BY boardno";
		
		
		
	
		List<Board> list = new ArrayList<>();
		
		try {
			//--- SQL 수행 객체 생성 ---
			ps = conn.prepareStatement(sql);
			
			//--- SQL 수행 및 결과 저장 ---
			rs = ps.executeQuery();
			
			//--- 조회 결과 처리 ---
			while(rs.next()) {
				Board board = new Board();
				
				board.setBoardno( rs.getInt("boardno") );
				board.setTitle( rs.getString("title") );
				board.setUserid( rs.getString("userid") );
				board.setContent( rs.getString("content") );
				board.setHit( rs.getInt("hit") );
				board.setWrite_date( rs.getDate("write_date") );

				
				list.add(board);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		
		//--- 최종 조회 결과 반환 ---
		return list;

	
	
	
	}

}

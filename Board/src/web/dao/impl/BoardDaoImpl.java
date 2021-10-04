package web.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import web.common.JDBCTemplate;
import web.dao.face.BoardDao;
import web.dto.Board;
import web.util.Paging;

public class BoardDaoImpl implements BoardDao {
	
	private PreparedStatement ps = null; //SQL수행 객체
	private ResultSet rs = null; //SQL조회 결과 객체
	
	@Override
	public List<Board> selectAll(Connection conn) {
		
		//SQL 작성
		String sql = "";
		sql += "SELECT * FROM board";
		sql += " ORDER BY boardno DESC";
		
		//결과 저장할 List
		List<Board> boardList = new ArrayList<>();
		
		try {
			ps = conn.prepareStatement(sql); //SQL수행 객체
			
			rs = ps.executeQuery(); //SQL 수행 및 결과집합 저장
			
			//조회 결과 처리
			while(rs.next()) {
				Board b = new Board(); //결과값 저장 객체
				
				//결과값 한 행 처리
				b.setBoardno( rs.getInt("boardno") );
				b.setTitle( rs.getString("title") );
				b.setUserid( rs.getString("userid") );
				b.setContent( rs.getString("content") );
				b.setHit( rs.getInt("hit") );
				b.setWriteDate( rs.getDate("write_date") );
				
				//리스트에 결과값 저장
				boardList.add(b);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//DB객체 닫기
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		
		//최종 결과 반환
		return boardList;
	}
	
	@Override
	public List<Board> selectAll(Connection conn, Paging paging) {
		
		//SQL작성
		String sql = "";
		sql += "SELECT * FROM (";
		sql += "	SELECT rownum rnum, B.* FROM (";
		sql += "		SELECT";
		sql += "			boardno, title, userid";
		sql += "			, hit, write_date";
		sql += "		FROM board";
		sql += "		ORDER BY boardno DESC";
		sql += "	) B";
		sql += " ) BOARD";
		sql += " WHERE rnum BETWEEN ? AND ?";

		//결과 저장할 List
		List<Board> boardList = new ArrayList<>(); 
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, paging.getStartNo());
			ps.setInt(2, paging.getEndNo());
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				Board board = new Board();
				
				board.setBoardno( rs.getInt("boardno") );
				board.setTitle( rs.getString("title") );
				board.setUserid( rs.getString("userid") );
				board.setHit( rs.getInt("hit") );
				board.setWriteDate( rs.getDate("write_date") );

				//리스트에 결과값 저장
				boardList.add(board);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		
		return boardList;
	}

	@Override
	public int selectCntAll(Connection conn) {
		
		//SQL 작성
		String sql = "";
		sql += "SELECT count(*) FROM board";
		
		//총 게시글 수
		int count = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				count = rs.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		
		return count;
	}
	

	@Override
	public Board selectBoardByBoardno(Connection conn, int boardno) {
		
		PreparedStatement ps = null; //SQL수행 객체
		ResultSet rs = null; //결과 집합 객체
		
		//--- SQL 작성 ---
		String sql = "";
		sql += "SELECT";
		sql += " boardno, title, userid, content, hit, write_date";
		sql += " FROM board ";
		sql += " WHERE boardno = ?";
		
		//조회된 결과를 저장할 객체
		Board res = null;
		
		
		try {
			//--- SQL수행 객체 ---
			ps = conn.prepareStatement(sql);
			ps.setInt(1, boardno);
			
			//--- SQL수행 및 결과 반환 ---
			rs = ps.executeQuery();
			
			//--- 결과 처리 ---
			while(rs.next()) {
				res = new Board();
				
				res.setBoardno( rs.getInt("boardno") );
				res.setTitle( rs.getString("title") );
				res.setUserid( rs.getString("userid") );
				res.setContent( rs.getString("content") );
				res.setHit( rs.getInt("hit") );
				res.setWriteDate( rs.getDate("write_date") );
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//--- 자원 해제 ---
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		

		
		
		return res;
	}


	
}






















package web.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import web.common.JDBCTemplate;
import web.dao.face.BoardFileDao;
import web.dto.BoardFile;

public class BoardFileDaoImpl implements BoardFileDao {
	

	private PreparedStatement ps = null; //SQL수행 객체
	
	@Override
	public void delete(Connection conn, BoardFile board) {


		
		String sql = "";
		sql += "DELETE FROM boardfile WHERE boardno = ?";
		
		try {
			//DB작업
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, board.getBoardno());

			ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(ps);
		}
		
	}
	
		
	

}

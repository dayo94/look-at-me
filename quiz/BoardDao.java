public int insertBoard(Connection conn, Board param) {
		
		String sql = "";
		sql += "INSERT INTO BOARD(board_num, board_writer, board_title, board_content, board_date)";
		sql += " VALUES( ?, ?, ?, ?, ? )";
		
		int result = 0;
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, param.getBoard_num());
			ps.setString(2, param.getBoard_writer());
			ps.setString(3, param.getBoard_title());
			ps.setString(4, param.getBoard_content());
			ps.setString(5, param.getBoard_date());

			result = ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(ps);
		}
		
		return result;
		
	}
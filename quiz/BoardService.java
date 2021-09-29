	public void insertBoard(Board board) {
		

		Connection conn = JDBCTemplate.getConnection();



		int new = BoardDao.insertBoard(conn, board);

		

		if( new == 0 ) {

			JDBCTemplate.rollback(conn);

		} else if( new == 1 ) {

			JDBCTemplate.commit(conn);

		}

		

	}
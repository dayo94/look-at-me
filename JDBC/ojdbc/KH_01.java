package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import dto.Emp;

public class KH_01 {

	public static void main(String[] args) {

		
//		
//		"";
		
		
		/*query += "CREATE TABLE BOARD (";
		query += " NO NUMBER CONSTRAINT PK_BOARD PRIMARY KEY";
		query += " , TITLE VARCHAR2(50) NOT NULL";
		query += " , CONTENT VARCHAR2(500) NOT NULL";
		query += " , WRITER VARCHAR2(30)";
		query += " , STATUS VARCHAR2(1) DEFAULT 'Y' CHECK ( STATUS IN ('Y', 'N') )";
		query += " , CREATE_DATE DATE DEFAULT SYSDATE";
		query += " , UPDATE_DATE DATE DEFAULT SYSDATE";
		query += " , CONSTRAINT FK_WRITER FOREIGN KEY ( WRITER )";
		query += "	 REFERENCES MEMBER ( ID )";
		query += ")";
		*/
		
			
	
		String query = "";
		query += "SELECT * FROM board";
		query += " ORDER BY no";
		
		
		//while ( rs.next() ) {
		
		Board board = new Board();
		
		board.setNo( rs.getInt("no") );
		board.setTitle( rs.getString("title") );
		board.setContent( rs.getString("content") );
		board.setwriter( rs.getString("writer") );
		board.setStatus( rs.getString("status") );
		board.setCreate_date( rs.getString("create_date") );
		board.setUpdate_date( rs.getString("update_date") );
		
		list.add( board );
		
		
		
		//------------------------------2
		
		
		
		
		
		
		
		private static final String DRIVER = "oracle.jdbc.driver.OracleDriver";
		
		private static final String URL = "jdbc:oracle:thin:@192.168.10.21:1521:xe";
		private static final String USERNAME = "WEB";
		private static final String PASSWORD = "WEB";
				
		private static Connection con = null;



		con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
		
		
		
		
		
		
		
		
		
		
	}

}

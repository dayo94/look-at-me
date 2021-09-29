public class JDBCTemplate {


	

	private static final String DRIVER = "oracle.jdbc.driver.OracleDriver";

	private static final String URL = "jdbc:oracle:thin:@128.168.25.30:1521:xe";

	private static final String USERNAME = "scott";

	private static final String PASSWORD = "tiger";

	

	private JDBCTemplate() { }



	private static Connection conn;

	

	public static Connection getConnection() {

		

		if( conn == null ) {

			try {

				Class.forName(DRIVER);

				

				conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);

				

				conn.setAutoCommit(false);

				

			} catch (ClassNotFoundException e) {

				e.printStackTrace();

			} catch (SQLException e) {

				e.printStackTrace();

			}

		}



		return conn;		

	}

	

	public static void close(Connection conn) {

		try {

			if(conn!=null && !conn.isClosed())	conn.close();

		} catch (SQLException e) {

			e.printStackTrace();

		}

	}

	

	public static void close(Statement st) {

		try {

			if(st!=null && !st.isClosed())	st.close();

		} catch (SQLException e) {

			e.printStackTrace();

		}

	}

	

	public static void close(PreparedStatement ps) {

		try {

			if(ps!=null && !ps.isClosed())	ps.close();

		} catch (SQLException e) {

			e.printStackTrace();

		}

	}

	

	public static void close(ResultSet rs) {

		try {

			if(rs!=null && !rs.isClosed())	rs.close();

		} catch (SQLException e) {

			e.printStackTrace();

		}

	}

	

	public static void commit(Connection conn) {

		try {

			if(conn!=null && !conn.isClosed())	conn.commit();

		} catch (SQLException e) {

			e.printStackTrace();

		}

	}

	

	public static void rollback(Connection conn) {

		try {

			if(conn!=null && !conn.isClosed())	conn.rollback();

		} catch (SQLException e) {

			e.printStackTrace();

		}

	}

}
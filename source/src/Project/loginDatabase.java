package Project;

import java.sql.*; 

// 테이블 student를 위한 데이터베이스 연동 자바빈즈 프로그램
public class loginDatabase {

	// 데이터베이스 연결 관련 상수 선언
	private static final String JDBC_DRIVER = "org.gjt.mm.mysql.Driver";
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/Project";
	private static final String USER = "root";
	private static final String PASSWD = "k1234";

	// 데이터베이스 연결 관련 변수 선언
	private Connection con = null;
	private Statement stmt = null;

	// JDBC 드라이버를 로드하는 생성자
	public loginDatabase() {
		// JDBC 드라이버 로드
		try {
			Class.forName(JDBC_DRIVER);
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}

	// 데이터베이스 연결 메소드
	public void connect() {
		try {
			// 데이터베이스에 연결, Connection 객체 저장 
			con = DriverManager.getConnection(JDBC_URL, USER, PASSWD);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 데이터베이스 연결 해제 메소드 
	public void disconnect() {
		if(stmt != null) {
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} 
		if(con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public String login(String id,String password) {	
		connect();

		String SQL = "select name from member where id='"+id+"' and password='"+password+"'";
		System.out.println(SQL);
		String name=null;
		try {
			stmt = con.createStatement();
			ResultSet rs=stmt.executeQuery(SQL);
			if(rs.next()) {
				name=rs.getString("name");
			}
			rs.close();	
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		finally {
			disconnect();
		}
		return name;
		//완성된 ArrayList 객체를 반환
	}
	
	public String find(String id,String email) {	
		connect();

		String SQL = "select password from member where id='"+id+"' and email='"+email+"'";
		System.out.println(SQL);
		String password=null;
		try {
			stmt = con.createStatement();
			ResultSet rs=stmt.executeQuery(SQL);
			if(rs.next()) {
				password=rs.getString("password");
			}
			rs.close();	
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		finally {
			disconnect();
		}
		return password;
		//완성된 ArrayList 객체를 반환
	}
}
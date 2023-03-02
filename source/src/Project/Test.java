package Project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Test {

	// 데이터베이스 연결 관련 상수 선언
	private static final String JDBC_DRIVER = "org.gjt.mm.mysql.Driver";
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/Project";
	private static final String USER = "root";
	private static final String PASSWD = "k1234";

	// 데이터베이스 연결 관련 변수 선언
	private Connection con = null;
	private Statement stmt = null;

	// JDBC 드라이버를 로드하는 생성자
	public Test() {
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
	
	public boolean insertMember(String Table,String category,String main_img,String sub_img,String name,int price,String color,String size) {	
		connect();
		// 질의 결과를 저장할 ArrayList를 선언
		// ArrayList 내부에는 학생정보를 저장한 StudentEntity가 삽입

		String SQL ="insert into "+Table+" (category,main_img,sub_img,name,price,color,size) values('"+category+"','"+main_img+"','"+sub_img+"','"+name+"','"+price+"','null','null')";
		System.out.println(SQL);
		try {
			stmt = con.createStatement();
			stmt.executeUpdate(SQL);
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} 
		finally {
			disconnect();
		}
		return true;
		//완성된 ArrayList 객체를 반환
	}
}

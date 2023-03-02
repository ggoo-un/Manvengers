package Project;

import java.sql.*;
import java.util.ArrayList;

// 테이블 student를 위한 데이터베이스 연동 자바빈즈 프로그램
public class MemberDatabase {

	// 데이터베이스 연결 관련 상수 선언
	private static final String JDBC_DRIVER = "org.gjt.mm.mysql.Driver";
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/Project";
	private static final String USER = "root";
	private static final String PASSWD = "k1234";

	// 데이터베이스 연결 관련 변수 선언
	private Connection con = null;
	private Statement stmt = null;

	// JDBC 드라이버를 로드하는 생성자
	public MemberDatabase() {
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
	public Point getlist(String id) {	
		connect();
		// 질의 결과를 저장할 ArrayList를 선언
		// ArrayList 내부에는 학생정보를 저장한 StudentEntity가 삽입

		String SQL = "select * from member where id='"+id+"'";
		System.out.println(SQL);
		Point point=new Point();
		try {
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(SQL);
			//ResultSet의 결과에서 모든 행을 각각의 StudentEntity 객체에 저장  
			if (rs.next()) {		
				//한 행의 학생정보를 저장할 학생을 위한 빈즈 객체 생성  
				//한 행의 학생정보를 자바 빈즈 객체에 
				point.setId(rs.getString("id"));
				point.setName(rs.getString("name"));
				point.setPoint(rs.getInt("point"));
			}
			rs.close();			
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		finally {
			disconnect();
		}
		return point;
	}
	
	public boolean insertMember(String id,String password,String question,String ansquestion,String name,String address,int hometel,int tel,String email) {	
		connect();
		// 질의 결과를 저장할 ArrayList를 선언
		// ArrayList 내부에는 학생정보를 저장한 StudentEntity가 삽입

		String SQL = "insert into member values('"+id+"','"+password+"','"+question+"','"+ansquestion+"','"+name+"','"+address+"',"+hometel+","+tel+",'"+email+"',"+1000+")";
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
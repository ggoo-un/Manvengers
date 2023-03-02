package Project;

import java.sql.*; 
import java.util.ArrayList; 

// 테이블 student를 위한 데이터베이스 연동 자바빈즈 프로그램
public class FashionDatabase {

	// 데이터베이스 연결 관련 상수 선언
	private static final String JDBC_DRIVER = "org.gjt.mm.mysql.Driver";
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/Project?useSSL=false&characterEncoding=utf8&useUnicode=true";
	private static final String USER = "root";
	private static final String PASSWD = "k1234";

	// 데이터베이스 연결 관련 변수 선언
	private Connection con = null;
	private Statement stmt = null;

	// JDBC 드라이버를 로드하는 생성자
	public FashionDatabase() {
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
	
	// 게시판의 모든 레코드를 반환하는 메소드
	public ArrayList<Fashion> getItem(String table) {	
		connect();
		// 질의 결과를 저장할 ArrayList를 선언
		// ArrayList 내부에는 학생정보를 저장한 StudentEntity가 삽입
		ArrayList<Fashion> list = new ArrayList<Fashion>();

		String SQL = "select * from "+table;
		try {
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(SQL);

			//ResultSet의 결과에서 모든 행을 각각의 StudentEntity 객체에 저장  
			while (rs.next()) {		
				//한 행의 학생정보를 저장할 학생을 위한 빈즈 객체 생성  
				Fashion fashion=new Fashion();
				//한 행의 학생정보를 자바 빈즈 객체에 
				fashion.setId(rs.getInt("id"));
				fashion.setCategory(rs.getString("category"));
				fashion.setMain_img(rs.getString("main_img"));
				fashion.setSub_img(rs.getString("sub_img"));
				fashion.setName(rs.getString("name"));
				fashion.setPrice(rs.getInt("price"));
				fashion.setColor(rs.getString("color"));
				fashion.setSize(rs.getString("size"));
				list.add(fashion);
			}
			rs.close();			
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		finally {
			disconnect();
		}
		//완성된 ArrayList 객체를 반환
		return list;
	}
	public ArrayList<Fashion> getAlist(String table,String category) {	
		connect();
		// 질의 결과를 저장할 ArrayList를 선언
		// ArrayList 내부에는 학생정보를 저장한 StudentEntity가 삽입
		ArrayList<Fashion> list = new ArrayList<Fashion>();

		String SQL = "select * from "+table+" where category='"+category+"'";
		System.out.println(SQL);
		try {
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(SQL);

			//ResultSet의 결과에서 모든 행을 각각의 StudentEntity 객체에 저장  
			while (rs.next()) {		
				//한 행의 학생정보를 저장할 학생을 위한 빈즈 객체 생성  
				Fashion fashion=new Fashion();
				//한 행의 학생정보를 자바 빈즈 객체에 
				fashion.setId(rs.getInt("id"));
				fashion.setCategory(rs.getString("category"));
				fashion.setMain_img(rs.getString("main_img"));
				//System.out.println(rs.getString("main_img"));
				fashion.setSub_img(rs.getString("sub_img"));
				fashion.setName(rs.getString("name"));
				fashion.setPrice(rs.getInt("price"));
				fashion.setColor(rs.getString("color"));
				fashion.setSize(rs.getString("size"));
				//ArrayList에 학생정보 StudentEntity 객체를 추가
				list.add(fashion);
			}
			rs.close();			
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		finally {
			disconnect();
		}
		//완성된 ArrayList 객체를 반환
		return list;
	}

	public Fashion getlist(int id,String table) {	
		connect();
		// 질의 결과를 저장할 ArrayList를 선언
		// ArrayList 내부에는 학생정보를 저장한 StudentEntity가 삽입
		ArrayList<Fashion> list = new ArrayList<Fashion>();

		String SQL = "select * from "+table+" where id='"+id+"'";
		System.out.println(SQL);
		Fashion fashion=new Fashion();
		try {
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(SQL);
			//ResultSet의 결과에서 모든 행을 각각의 StudentEntity 객체에 저장  
			if (rs.next()) {		
				//한 행의 학생정보를 저장할 학생을 위한 빈즈 객체 생성  
				//한 행의 학생정보를 자바 빈즈 객체에 
				fashion.setId(rs.getInt("id"));
				fashion.setCategory(rs.getString("category"));
				fashion.setMain_img(rs.getString("main_img"));
				//System.out.println(rs.getString("main_img"));
				fashion.setSub_img(rs.getString("sub_img"));
				fashion.setName(rs.getString("name"));
				fashion.setPrice(rs.getInt("price"));
				fashion.setColor(rs.getString("color"));
				fashion.setSize(rs.getString("size"));
				//ArrayList에 학생정보 StudentEntity 객체를 추가
			}
			rs.close();			
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		finally {
			disconnect();
		}
		return fashion;
	}
	public boolean insertComment(String userid,String tablename,int id,String title,String name,String registertime) {	
		connect();

		String SQL = "insert into Comment values('"+userid+"','"+tablename+"','"+id+"','"+title+"','"+name+"','"+registertime+"')";
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
	public ArrayList<Comment> getComment(String table,int id) {	
		connect();
		// 질의 결과를 저장할 ArrayList를 선언
		// ArrayList 내부에는 학생정보를 저장한 StudentEntity가 삽입
		ArrayList<Comment> list = new ArrayList<Comment>();

		String SQL = "select * from comment where id='"+id+"' and tablename='"+table+"'";
		System.out.println(SQL);
		try {
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(SQL);

			//ResultSet의 결과에서 모든 행을 각각의 StudentEntity 객체에 저장  
			while (rs.next()) {		
				//한 행의 학생정보를 저장할 학생을 위한 빈즈 객체 생성  
				Comment comment=new Comment();
				//한 행의 학생정보를 자바 빈즈 객체에 
				comment.setId(rs.getInt("id"));
				comment.setUserid(rs.getString("userid"));
				comment.setTablename(rs.getString("tablename"));
				comment.setTitle(rs.getString("title"));
				comment.setName(rs.getString("name"));
				comment.setRegistertime(rs.getString("registertime"));

				//ArrayList에 학생정보 StudentEntity 객체를 추가
				list.add(comment);
			}
			rs.close();			
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		finally {
			disconnect();
		}
		//완성된 ArrayList 객체를 반환
		return list;
	}
}

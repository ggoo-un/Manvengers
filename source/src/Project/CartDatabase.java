package Project;

import java.sql.*; 
import java.util.ArrayList; 

// 테이블 student를 위한 데이터베이스 연동 자바빈즈 프로그램
public class CartDatabase {

	// 데이터베이스 연결 관련 상수 선언
	private static final String JDBC_DRIVER = "org.gjt.mm.mysql.Driver";
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/Project?useSSL=false&characterEncoding=utf8&useUnicode=true";
	private static final String USER = "root";
	private static final String PASSWD = "k1234";

	// 데이터베이스 연결 관련 변수 선언
	private Connection con = null;
	private Statement stmt = null;

	// JDBC 드라이버를 로드하는 생성자
	public CartDatabase() {
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
	public boolean insertCart(String userid,String searchTable,int id,String orderdate,String img,String name,int cnt,int price,String selectOption) {	
		connect();
		String SQL = "insert into cart values('"+userid+"','"+searchTable+"','"+id+"','"+orderdate+"','"+img+"','"+name+"','"+cnt+"','"+price+"','"+selectOption+"')";
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
	}
	public boolean insertOrderCart(String userid,String searchTable,int id,String orderdate,String img,String name,int cnt,int price,String selectOption) {	
		connect();
		String SQL = "insert into orderTable values('"+userid+"','"+searchTable+"','"+id+"','"+orderdate+"','"+img+"','"+name+"','"+cnt+"','"+price+"','"+selectOption+"')";
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
	}
	public Cart getOrderlist(String table,String id) {	
		connect();
		String SQL = "select * from cart where id='"+id+"' and searchTable='"+table+"'";
		System.out.println(SQL);
		Cart cart=new Cart();
		try {
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(SQL);

			//ResultSet의 결과에서 모든 행을 각각의 StudentEntity 객체에 저장  
			while (rs.next()) {		
				//한 행의 학생정보를 저장할 학생을 위한 빈즈 객체 생성  
				//한 행의 학생정보를 자바 빈즈 객체에 
				cart.setCnt(rs.getInt("cnt"));
				cart.setId(rs.getInt("id"));
				cart.setPrice(rs.getInt("price"));
				cart.setImg(rs.getString("img"));
				cart.setName(rs.getString("name"));
				cart.setOderdate(rs.getString("orderdate"));
				cart.setSearchTable(rs.getString("searchTable"));
				cart.setSelectOption(rs.getString("selectOption"));
			}
			rs.close();			
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		finally {
			disconnect();
		}
		//완성된 ArrayList 객체를 반환
		return cart;
	}
	public ArrayList<Cart> getOrder(String id) {	
		connect();
		String SQL = "select * from orderTable where userid='"+id+"'";
		System.out.println(SQL);
		ArrayList<Cart> list = new ArrayList<Cart>();
		try {
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(SQL);

			//ResultSet의 결과에서 모든 행을 각각의 StudentEntity 객체에 저장  
			while (rs.next()) {		
				//한 행의 학생정보를 저장할 학생을 위한 빈즈 객체 생성  
				//한 행의 학생정보를 자바 빈즈 객체에 
				Cart cart=new Cart();
				cart.setCnt(rs.getInt("cnt"));
				cart.setId(rs.getInt("id"));
				cart.setPrice(rs.getInt("price"));
				cart.setImg(rs.getString("img"));
				cart.setName(rs.getString("name"));
				cart.setOderdate(rs.getString("orderdate"));
				cart.setSearchTable(rs.getString("searchTable"));
				cart.setSelectOption(rs.getString("selectOption"));
				list.add(cart);
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
	public ArrayList<Cart> getlist(String id) {	
		connect();
		ArrayList<Cart> list = new ArrayList<Cart>();

		String SQL = "select * from cart where userid='"+id+"'";
		try {
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(SQL);

			//ResultSet의 결과에서 모든 행을 각각의 StudentEntity 객체에 저장  
			while (rs.next()) {		
				//한 행의 학생정보를 저장할 학생을 위한 빈즈 객체 생성  
				Cart cart=new Cart();
				//한 행의 학생정보를 자바 빈즈 객체에 
				cart.setCnt(rs.getInt("cnt"));
				cart.setId(rs.getInt("id"));
				cart.setPrice(rs.getInt("price"));
				cart.setImg(rs.getString("img"));
				cart.setName(rs.getString("name"));
				cart.setOderdate(rs.getString("orderdate"));
				cart.setSearchTable(rs.getString("searchTable"));
				cart.setSelectOption(rs.getString("selectOption"));
				list.add(cart);
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
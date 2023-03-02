<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="Project.FashionDatabase"%>
<%@page import="Project.Fashion"%>
<jsp:useBean id="Cart" class="Project.CartDatabase" scope="page" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
request.setCharacterEncoding("utf-8");
String userid = (String) session.getAttribute("id");
if(userid==null){
	out.print("<script>alert('로그인 후 이용해 주세요!');</script>");
	out.print("<script>history.go(-1);</script>");
}else{
String cnt = request.getParameter("inp_1");
String color = request.getParameter("val1");
String size = request.getParameter("val2");
String id = request.getParameter("id");
String table = request.getParameter("table");
System.out.println(cnt);
FashionDatabase fashiondb = new FashionDatabase(); 
Fashion fashion = fashiondb.getlist(Integer.parseInt(id), table);
String optionvalue=color+","+size;
SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
String time=sdf.format(Calendar.getInstance().getTime());
String img=fashion.getMain_img();
int price=fashion.getPrice();
boolean success=Cart.insertCart(userid,table,Integer.parseInt(id),time,img,fashion.getName(),Integer.parseInt(cnt),price,optionvalue );
response.sendRedirect("cart.jsp");
}
%>
</body>
</html>

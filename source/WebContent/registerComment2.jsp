<%@page import="Project.FashionDatabase"%>
<%@page import="Project.Fashion"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
String name = (String) session.getAttribute("name");
if(userid==null||name==null){
	out.print("<script>alert('로그인 후 이용해 주세요!');</script>");
	out.print("<script>history.go(-1);</script>");
}else{
String comment=request.getParameter("comment");
String id=request.getParameter("id");
String table=request.getParameter("table");
SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
String time=sdf.format(Calendar.getInstance().getTime());
FashionDatabase fashion=new FashionDatabase();
fashion.insertComment(userid, table,Integer.parseInt(id),comment, name, time);
System.out.println(comment);
response.sendRedirect("Board.jsp?id="+id+"&table="+table);
}
%>
</body>
</html>
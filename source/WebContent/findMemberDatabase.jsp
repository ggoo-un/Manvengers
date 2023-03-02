<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="Member" class="Project.loginDatabase" scope="page" />
<%
request.setCharacterEncoding("UTF-8");
String id=request.getParameter("member_id");
String email=request.getParameter("email");
String password=Member.find(id, email);
if(password!=null){
	String alert="<script>alert('비밀번호는 : "+password+"입니다.');</script>";
	out.print(alert);
	out.print("<script>history.go(-1);</script>");
}
else{
	out.print("<script>alert('일차하는 정보가 없습니다.');</script>");
	out.print("<script>history.go(-1);</script>");
}
%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="Member" class="Project.MemberDatabase" scope="page" />
<%
request.setCharacterEncoding("UTF-8");
String id=request.getParameter("userid");
String password=request.getParameter("password");
String question=request.getParameter("question");
String ansquestion=request.getParameter("ansquestion");
String name=request.getParameter("name");
String address=request.getParameter("addr1")+request.getParameter("addr2")+request.getParameter("addr3");
String hometel=request.getParameter("hometel")+request.getParameter("hometel2")+request.getParameter("hometel3");
String tel=request.getParameter("tel")+request.getParameter("tel2")+request.getParameter("tel3");
int hometel2=Integer.parseInt(hometel);
int tel2=Integer.parseInt(tel);
String email=request.getParameter("email")+request.getParameter("email2");
boolean success=Member.insertMember(id,password,question,ansquestion,name,address,hometel2,tel2,email);
if(success==true){
	out.print("<script>alert('회원가입 성공!')</script>");
	response.sendRedirect("main.jsp");
}
else{
	out.print("<script>alert('회원가입 실패');</script>");
	out.print("<script>history.go(-1);</script>");
}
%>
</body>
</html>
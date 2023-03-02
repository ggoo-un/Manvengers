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
String password=request.getParameter("member_pw");
String name=Member.login(id,password);
if(name!=null){
	session.setAttribute("name", name);
	session.setAttribute("id", id);
	response.sendRedirect("main.jsp");
}
else{
	out.print("<script>alert('Error!');</script>");
	out.print("<script>history.go(-1);</script>");
}
%>
</body>
</html>
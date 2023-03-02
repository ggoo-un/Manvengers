<%@page import="Project.CartDatabase"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.StringTokenizer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="Cart" class="Project.Cart" scope="page" />
<jsp:useBean id="Cartdb" class="Project.CartDatabase" scope="page" />

<%@ page import="java.util.ArrayList, Project.Cart"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.util.Enumeration" %>
<%  request.setCharacterEncoding("utf-8"); %>
<%
SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
String time=sdf.format(Calendar.getInstance().getTime());
CartDatabase cartdb=new CartDatabase();
	Enumeration<String> e = request.getParameterNames();
	String userid = (String) session.getAttribute("id");
   	while ( e.hasMoreElements() ) {
   		//String name = (String) e.nextElement();
   		String name = e.nextElement();
   		String [] data = request.getParameterValues(name);
		if (data != null) {
			for ( String eachdata : data ){
				StringTokenizer str=new StringTokenizer(eachdata,",");
				String table=str.nextToken();
				String id=str.nextToken();
				Cart cart = Cartdb.getOrderlist(table, id);
				System.out.println(cart.getId());
				boolean success=Cartdb.insertOrderCart(userid,table,cart.getId(),time,cart.getImg(),cart.getName(),cart.getCnt(),cart.getPrice(),"product prepare");
     			out.println(table+" "+id);
			}
		}
		out.println("<p>");
   	}
	response.sendRedirect("order.jsp");
%>
</body>
</html>
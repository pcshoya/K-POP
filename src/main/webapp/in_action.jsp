<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnect.jsp" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="java.js"></script>
<%
	String rid = request.getParameter("rid");
	String sid = request.getParameter("sid");
	String name = request.getParameter("name");
	String num = request.getParameter("num");
	String tick = request.getParameter("tick");
	String pri = request.getParameter("pri");
	String allprice = request.getParameter("allprice");
	String yn = request.getParameter("yn");
	
	try{
		
		String sql ="insert into TBL_RESERVATIONS values(?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, rid);
		pstmt.setString(2, sid);
		pstmt.setString(3, name);
		pstmt.setString(4, num);
		pstmt.setString(5, tick);
		pstmt.setString(6, pri);
		pstmt.setString(7, allprice);
		pstmt.setString(8, yn);
		pstmt.executeUpdate();
		
		%>
		<script>
		location.href="insert.jsp";
		</script>
		<%
	}catch(Exception e){
		out.print("db error :" + e.getMessage());
	}
%>
</body>
</html>
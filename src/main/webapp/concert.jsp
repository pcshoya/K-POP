<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnect.jsp" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="main.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
<h2 class="center">콘서트일정조회</h2>
<form>
<table border="1">
<tr>
	<th class="center">공연장명</th>
	<th class="center">주소</th>
	<th class="center">수용인원(명)</th>
	<th class="center">공연명</th>
	<th class="center">아티스트이름</th>
	<th class="center">날짜</th>
	<th class="center">시작시간</th>
	<th class="center">종료시간</th>
	<th class="center">티켓가격(원)</th>
	<th class="center">공연상태</th>
</tr>
<%
	try{
		String sql = "SELECT VENUE_NAME, ADDRESS, TO_CHAR(CAPACITY,'999,999'), CONCERT_TITLE, ARTIST_NAME, TO_CHAR(CONCERT_DATE,'YYYY-MM-DD'), TO_CHAR(START_TIME,'HH24:MI'), TO_CHAR(END_TIME,'HH24:MI'), TO_CHAR(BASE_PRICE,'999,999'), STATUS FROM TBL_CONCERTS C JOIN TBL_VENUES V ON C.VENUE_ID = V.VENUE_ID ORDER BY CONCERT_DATE ASC";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()){
			
		%>
		<tr>
			<td class="center"><%= rs.getString(1) %></td>
			<td class="center"><%= rs.getString(2) %></td>
			<td class="center"><%= rs.getString(3) %></td>
			<td class="center"><%= rs.getString(4) %></td>
			<td class="center"><%= rs.getString(5) %></td>
			<td class="center"><%= rs.getString(6) %></td>
			<td class="center"><%= rs.getString(7) %></td>
			<td class="center"><%= rs.getString(8) %></td>
			<td class="center"><%= rs.getString(9) %></td>
			<td class="center"><%= rs.getInt(10)==1?"OPEN":rs.getInt(10)==2?"SOLD_OUT":rs.getInt(10)==3?"CANCELED":rs.getInt(10)==4?"DONE":"NULL" %></td>
		</tr>
		
		<%
		}
	}catch(Exception e){
		out.print("db error : " + e.getMessage());
	}
%>
</table>
</form>

</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
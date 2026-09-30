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
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h2>콘서트일정조회</h2>
		<table border="1">
			<tr>
				<th>공연장명</th>
				<th>주소</th>
				<th>수용인원(명)
				<th>공연명</th>
				<th>아티스트이름</th>
				<th>날짜</th>
				<th>시작시간</th>
				<th>종료시간</th>
				<th>티켓가격(원)</th>
				<th>공연상태</th>
			</tr>
			<%
			String sql = "SELECT VENUE_NAME, ADDRESS, TO_CHAR(CAPACITY,'999,999'),CONCERT_TITLE, ARTIST_NAME, TO_CHAR(CONCERT_DATE,'YYYY-MM-DD'),TO_CHAR(START_TIME,'HH24:MI'), TO_CHAR(END_TIME,'HH24:MI'), TO_CHAR(BASE_PRICE,'999,999'), STATUS FROM TBL_VENUES V JOIN TBL_CONCERTS C ON  V.VENUE_ID = C.VENUE_ID";
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
			%>
			<tr>
				<td class="center"><%=rs.getString(1)%></td>
				<td class="center"><%=rs.getString(2)%></td>
				<td class="center"><%=rs.getString(3)%></td>
				<td class="center"><%=rs.getString(4)%></td>
				<td class="center"><%=rs.getString(5)%></td>
				<td class="center"><%=rs.getString(6)%></td>
				<td class="center"><%=rs.getString(7)%></td>
				<td class="center"><%=rs.getString(8)%></td>
				<td class="center"><%=rs.getString(9)%></td>
				<td class="center"><%=rs.getInt(10) == 1 ? "OPEN" : rs.getInt(10) == 2 ? "SOLD_OUT" : rs.getInt(10) == 3 ? "CANCELED" : "DONE"%></td>
			</tr>
			<%
			}
			%>
		</table>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
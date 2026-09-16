<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="dbconnect.jsp"%>
<%@ page import="java.sql.*"%>
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
		<h2 class="center">공연장조회</h2>
		<form>
			<table border="1">
				<tr>
					<th class="center">공연장아이디</th>
					<th class="center">공연장명</th>
					<th class="center">주소</th>
					<th class="center">도시명</th>
					<th class="center">수용인원(명)</th>
				</tr>
				<%
				try {
					String sql = "SELECT VENUE_ID, VENUE_NAME, ADDRESS, CITY, TO_CHAR(CAPACITY, '999,999') FROM TBL_VENUES";
					PreparedStatement pstmt = conn.prepareStatement(sql);
					ResultSet rs = pstmt.executeQuery();
					while (rs.next()) {
				%>
				<tr>
					<td class="center"><%=rs.getString(1)%></td>
					<td class="center"><%=rs.getString(2)%></td>
					<td class="center"><%=rs.getString(3)%></td>
					<td class="center"><%=rs.getString(4)%></td>
					<td class="center"><%=rs.getString(5)%></td>
				</tr>

				<%
				}
				} catch (Exception e) {
				out.print("db error : " + e.getMessage());
				}
				%>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
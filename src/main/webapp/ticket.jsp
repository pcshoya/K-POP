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
		<h2 class="center">예매내역조회</h2>
		<form>
			<table border="1">
				<tr>
					<th class="center">예약아이디</th>
					<th class="center">예매자이름</th>
					<th class="center">공연명</th>
					<th class="center">금액(원)</th>
					<th class="center">티켓수량(매)</th>
					<th class="center">총금액(원)</th>
					<th class="center">결재상태</th>
				</tr>
				<%
				try {
					String sql = "SELECT R.RESERVATION_ID, R.BUYER_NAME, C.CONCERT_TITLE, TO_CHAR(R.UNIT_PRICE, '999,999'), R.TICKET_COUNT, TO_CHAR(R.UNIT_PRICE * R.TICKET_COUNT, '999,999'), R.PAY_STATUS FROM TBL_RESERVATIONS R, TBL_CONCERTS C WHERE R.CONCERT_ID = C.CONCERT_ID";
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
					<td class="center"><%=rs.getString(6)%></td>
					<td class="center"><%=rs.getInt(7) == 1 ? "PAID" : rs.getInt(7) == 2 ? "UNPAID" : rs.getInt(7) == 3 ? "REFUNDED" : "NULL"%></td>
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
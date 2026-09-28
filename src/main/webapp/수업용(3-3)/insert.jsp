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
<jsp:include page="header.jsp"></jsp:include>
<section>
<h2>예매등록</h2>
<form name="frm" onsubmit="return check()" action="insert_action.jsp">
<table border="1">
<tr>
	<th>예매아이디</th>
	<td><input type="text" name="r_id">예) R001</td>
</tr>
<tr>
	<th>공연아이디</th>
	<td><input type="text" name="c_id">예) C001</td>
</tr>
<tr>
	<th>예매자 이름</th>
	<td><input type="text" name="r_name">예) 김고객</td>
</tr>
<tr>
	<th>예매자연락처</th>
	<td><input type="text" name="r_tel">예) 010-1111-2222</td>
</tr>
<tr>
	<th>티켓수량</th>
	<td><input type="text" name="t_num">예) 2</td>
</tr>
<tr>
	<th>금액</th>
	<td><input type="text" name="cost">예) 110000</td>
</tr>
<tr>
	<th>총금액</th>
	<td><input type="text" name="totla_cost">예) 220000</td>
</tr>
<tr>
	<th>결제상태</th>
	<td><select name="p_status">
		<option value="">등급선택</option>
		<option value="1">1[PAID]</option>
		<option value="2">2[UNPAID]</option>
		<option value="3">3[REFUNDED]</option>
	</select>예) [1]PAID</td>
</tr>
<tr>
	<td colspan="2" class="center">
		<input type="submit" value="등록">
		<input type="reset" value="다시쓰기" onclick="r_alert()">
	</td>
</tr>
</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
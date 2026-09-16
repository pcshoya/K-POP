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
<body onload="document.frm.rid.focus()">
	<script src="java.js"></script>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h2 class="center">예매등록</h2>
		<form name="frm" onsubmit="return check_in()" action="in_action.jsp">
			<table border="1">
				<tr>
					<th class="center">예매아이디</th>
					<td><input type="text" name="rid">예) R001</td>
				</tr>
				<tr>
					<th class="center">공연아이디</th>
					<td><input type="text" name="sid">예) C001</td>
				</tr>
				<tr>
					<th class="center">예매자이름</th>
					<td><input type="text" name="name">예) 김고객</td>
				</tr>
				<tr>
					<th class="center">예매자연락처</th>
					<td><input type="text" name="num">예) 010-1111-2222</td>
				</tr>
				<tr>
					<th class="center">티켓수량</th>
					<td><input type="text" name="tick">예) 2</td>
				</tr>
				<tr>
					<th class="center">금액</th>
					<td><input type="text" name="pri">예) 110000</td>
				</tr>
				<tr>
					<th class="center">총금액</th>
					<td><input type="text" name="allprice">예) 220000</td>
				</tr>
				<tr>
					<th class="center">결제상태</th>
					<td><select name="yn">
							<option value="">등급선택</option>
							<option value=1>[1]PAID</option>
							<option value=2>[2]UNPAID</option>
							<option value=3>[3]REFUNDED</option>
					</select> 예) [1]PAID</td>
				</tr>
				<tr>
					<td colspan="2" class="center"><input type="submit" value="등록">
						<input type="reset" value="다시쓰기" onclick="rewrite()"></td>
				</tr>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
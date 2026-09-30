<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="dbconnect.jsp"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	try {
		String r_id = request.getParameter("r_id");
		String c_id = request.getParameter("c_id");
		String b_name = request.getParameter("b_name");
		String b_phone = request.getParameter("b_phone");
		String t_count = request.getParameter("t_count");
		String u_price = request.getParameter("u_price");
		String t_price = request.getParameter("t_price");
		String p_status = request.getParameter("p_status");

		String sql = "INSERT INTO TBL_RESERVATIONS VALUES (?,?,?,?,?,?,?,?)";

		PreparedStatement pstmt = con.prepareStatement(sql);

		int result = 0;

		pstmt.setString(1, r_id);
		pstmt.setString(2, c_id);
		pstmt.setString(3, b_name);
		pstmt.setString(4, b_phone);
		pstmt.setString(5, t_count);
		pstmt.setString(6, u_price);
		pstmt.setString(7, t_price);
		pstmt.setString(8, p_status);

		result = pstmt.executeUpdate();

		if (result == 1) {
	%>
	<script>
		alert("예매정보가 정상적으로 등록 되었습니다.");
		location.href = "index.jsp";
	</script>
	<%
	}
	} catch (Exception e) {
		out.println("DB오류 : " + e.getMessage());
	}
	%>
</body>
</html>
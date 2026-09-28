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
<h2>공연장 조회</h2>
<table border="1">
	<tr>
		<th>공연장아이디</th>
		<th>공연장명</th>
		<th>주소</th>
		<th>도시명</th>
		<th>수용인원(명)</th>
	</tr>
<%
	String sql = "select * from TBL_VENUES";
	PreparedStatement pstmt = con.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
	while(rs.next()){
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
%>
</table>

</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="dbcon.jsp"%>

	<%
		try {
			sql = "insert into member_tbl_ll values(?,?,?,?,?,?,)";

			ps = con.prepareStatement(sql);

			ps.setString(1, request.getParameter("number"));
			ps.setString(2, request.getParameter("member_id"));
			ps.setString(3, request.getParameter("member_name"));
			ps.setString(4, request.getParameter("member_grade"));
			ps.setString(5, request.getParameter("member_hobby"));
			ps.setString(6, request.getParameter("member_date"));

			ps.executeUpdate();
	%>
	<script>
		alert("친구둥록이 성공했습니다!");
		location = "select.jsp";
	</script>
	<%
		} catch (Exception e) {
	%>
	<script>
		alert("친구둥록이 실패했습니다!");
		history.back();
	</script>

	<%
		}
	%>

</body>
</html>
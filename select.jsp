<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>

	<h1>친구 조회/수정</h1>
	
	<table border="1">
		<tr>
			<td>회원번호</td>
			<td>회원ID</td>
			<td>이름</td>
			<td>등급</td>
			<td>취미</td>
			<td>등록일자</td>
		</tr>	
	
<%
	sql +="select member_no, member_id, member_name, ";
	sql +=" decode(member_grade,'S','특별','A','우수','B','일반'),";
	sql +=" member_hobby,"; 
	sql +=" to_char(member_date,'yyyy.mm.dd')"; 
	sql +=" from member_tbl_ll";
	sql +=" order by 2";
	
	rs = stmt.executeQuery(sql);
	while(rs.next()){
	
%>
	<tr align="center">
		<td><%=rs.getString(1) %></td>
		<td><a href="update.jsp?member_no<%=rs.getString(2) %>"><%=rs.getString(2) %></a>
		<td><%=rs.getString(3) %></td>
		<td><%=rs.getString(4) %></td>
		<td><%=rs.getString(5) %></td>
		<td><%=rs.getString(6) %></td>
		
	</tr>

<%
	}
%>
</table>
</body>
</html>
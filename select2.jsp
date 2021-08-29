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

	<h1>친구 조회</h1>
	
	<table border="1">
		<tr>
			<td>회원ID</td>
			<td>회원명</td>
			<td>등록일자</td>
		</tr>	
	
<%
	sql +="";
	sql +="";
	sql +="";
	sql +="";
	sql +="";
	
	rs = stmt.executeQuery(sql);
	while(rs.next()){
	
%>
	<tr align="center">
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></a>
		<td><%=rs.getString(3) %></td>
		
	</tr>

<%
	}
%>


</table>
</body>
</html>
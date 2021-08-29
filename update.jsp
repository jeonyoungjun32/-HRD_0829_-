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

<%
	String member_no = request.getParameter("member_no");

	sql +="select  member_id, member_name, ";
	sql +=" decode(member_grade,'S','특별','A','우수','B','일반'),";
	sql +=" member_hobby,"; 
	sql +=" to_char(member_date,'yyyy.mm.dd')"; 
	sql +=" from member_tbl_ll";
	sql +=" where member_no="+member_no;
	sql +=" order by 2";
	
	rs = stmt.executeQuery(sql);
	rs.next();
	
	String member_id = rs.getString(1);
	String member_name = rs.getString(2);
	String member_grade = rs.getString(3);
	String member_hobby = rs.getString(4);
	String member_date = rs.getString(5);

%>


<form action="updatePro.jsp" name="f" method="post">
		<table style="margin: 0 auto;" border="1">
			<h1>친구 등록</h1>
			<tr>
				<th>회원정보</th>
				<td><input type="text" name="member_no" value=" <%=member_no%> "></td>
			</tr>
			<tr>
				<th>회원ID</th>
				<td><input type="text" name="member_id" value="<%=member_id%>"></td>
			</tr>
		
			<tr>
				<th>이름</th>
				<td><input type="text" name="member_name" value="<%=member_name%>"></td>
			</tr>
			<tr>
				<th>등급</th>
				<td>
					<select name="member_grade" value="<%=member_grade%>">
						<option >특별회원 </option>
						<option >우수회원 </option>
						<option >일반회원 </option>
					</select>	
					
				</td>
			</tr>
			<tr>
				<th>취미</th>
				<td><label><input type="checkbox" name="member_hobby" value="<%=member_hobby%>">독서</label> 
					<label><input type="checkbox" name="member_hobby" value="<%=member_hobby%>">운동</label> 
					<label><input type="checkbox" name="member_hobby" value="<%=member_hobby%>">영화</label> </td>
			</tr>
			<tr>
				<th>등록일자</th>
				<td><input type="text" name="member_date" value="<%=member_date%> "></td>
			</tr>
			
			<tr style="margin: 0 auto;" >
				<td colspan="2">
					<input type="submit"  value="등록" onclick="check(); return false"> 
					<input type="submit"  value="조회" onclick="select.jsp"></td>
			</tr>

		</table>
	</form>
</body>
</html>
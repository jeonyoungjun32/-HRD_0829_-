<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function check() {
	if(f.member_no.value == ""){
		alert("회원정보를 입력해주세요!");
		return f.member_no.focus();
	}
	
	if(f.member_id.value == ""){
		alert("회원아이디를 입력해주세요!");
		return f.member_id.focus();
	}
	
	if(f.member_name.value == ""){
		alert("회원이름을 입력해주세요!");
		return f.member_name.focus();
	}
	
	if(f.member_grade[0].checked == false && f.member_grade[1].checked == false && f.member_grade[2].checked == false ){
		alert("등급을 체크해주세요!");
		return;
	}
	
	if(f.member_hobby[0].checked == false && f.member_hobby[1].checked == false && f.member_hobby[2].checked == false){
		alert("취미를 체크 해주세요!");
		return;
	}
	
	if(f.member_date.value == ""){
		alert("등록일자를 입력해주세요!");
		return f.member_date.focus();
	}
	
	
	
	f.submit();
}

</script>
<body>
	<%@ include file="header.jsp"%>
	
	<%
		/* sql ="select NVL(max(member_no),0)+1 from member_tbl_ll";
		rs = stmt.executeQuery(sql);
		rs.next();
		String member_no = rs.getString("member_no");
		
		sql = "select to_char(sysdate,'yyyy/mm/dd') from dual";
		rs = stmt.executeQuery(sql);
		rs.next();
		String member_date = rs.getString("member_date");  */
	%>
	<form action="insertPro.jsp" name="f" method="post">
		<table style="margin: 0 auto;" border="1">
			<h1>친구 등록</h1>
			<tr>
				<th>회원정보</th>
				<td><input type="text" name="member_no" value="<%-- <%=member_no%> --%>"></td>
			</tr>
			<tr>
				<th>회원ID</th>
				<td><input type="text" name="member_id" value=""></td>
			</tr>
		
			<tr>
				<th>이름</th>
				<td><input type="text" name="member_name" value=""></td>
			</tr>
			<tr>
				<th>등급</th>
				<td>
					<select name="member_grade">
						<option >특별회원 </option>
						<option >우수회원 </option>
						<option >일반회원 </option>
					</select>	
					
				</td>
			</tr>
			<tr>
				<th>취미</th>
				<td><label><input type="checkbox" name="member_hobby" value="독서">독서</label> 
					<label><input type="checkbox" name="member_hobby" value="운동">운동</label> 
					<label><input type="checkbox" name="member_hobby" value="영화">영화</label> </td>
			</tr>
			<tr>
				<th>등록일자</th>
				<td><input type="text" name="member_date" value="<%-- <%=member_date%> --%>"></td>
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
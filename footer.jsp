<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<footer>
		<!--ⓒ입력 방법- 1. 한글 ㅇ 입력->[한자] 눌러  찾아 선택-->
		HRDKOREA Copyright &copy; ⓒ2019 All reserved.
	</footer>
</body>
</html>

<%
try{
	
	if(con != null) con.clone();
	if(ps != null) ps.clone();
	if(stmt != null) stmt.clone();
	if(rs != null) rs.clone();

}catch(Exception e){
	e.printStackTrace();
}finally{
	
}
%>